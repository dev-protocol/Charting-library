import 'dart:convert';

import 'package:chart/commons/localhost.dart';
import 'package:chart/commons/tzdt.dart';
import 'package:chart/components/tvchart/tvchart_types.dart';
import 'package:chart/data/historical.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

const _assetsPath = '/assets/tvchart/tvchart.html';

class TVChart extends StatefulWidget {
  const TVChart({Key? key}) : super(key: key);

  @override
  _TVChartState createState() => _TVChartState();
}

class _TVChartState extends State<TVChart> with WidgetsBindingObserver {
  InAppWebViewController? _controller;
  bool _isServerRunning = false;
  bool _isLoading = false;
  bool _isError = false;
  String _isErrorMessage = '';
  bool _showBack = false;
  final Map<String, _OnTickInfo> _onTickMap = {};

  bool get _chartLoaded {
    return _controller != null && !_isLoading && !_isError;
  }

  // ignore: unused_element
  void _callOnTick(String listenerGuid, Bar bar) {
    if (_chartLoaded) {
      final controller = _controller!;
      final Map<String, dynamic> payload = {
        'listenerGuid': listenerGuid,
        'bar': bar,
      };

      controller.evaluateJavascript(
        source: 'window.callOnTick(`${jsonEncode(payload)}`);',
      );
    }
  }

  void _attachHandler() {
    final controller = _controller;
    if (controller == null) return;

    controller.addJavaScriptHandler(
      handlerName: 'start',
      callback: (arguments) {
        return ChartingLibraryWidgetOptions(
          debug: false,
          locale: 'en',
          symbol: 'IDX:COMPOSITE',
          fullscreen: false,
          interval: '1D',
          timezone: Timezone.asiaJakarta,
          autosize: true,
          autoSaveDelay: 1,
          theme: Theme.of(context).brightness == Brightness.light
              ? ChartTheme.light
              : ChartTheme.dark,
          savedData: _savedData,
          disabledFeatures: const [
            'header_fullscreen_button',
            'header_screenshot',
            'use_localstorage_for_settings',
            'timezone_menu',
            'go_to_date',
            'timeframes_toolbar',
          ],
          enabledFeatures: const ['hide_left_toolbar_by_default'],
        );
      },
    );

    controller.addJavaScriptHandler(
      handlerName: 'onReady',
      callback: (arguments) {
        return const DatafeedConfiguration(
          exchanges: [
            // Exchange(
            //   name: 'IDX',
            //   value: 'IDX',
            //   desc: 'Indonesia Stock Exchange',
            // ),
          ],
          supportedResolutions: ['1D'],
          currencyCodes: ['IDR'],
          supportsMarks: false,
          supportsTime: true,
          supportsTimescaleMarks: true,
          symbolsTypes: [
            DatafeedSymbolType(
              name: 'Index',
              value: 'index',
            ),
            DatafeedSymbolType(
              name: 'Stock',
              value: 'stock',
            ),
          ],
        );
      },
    );

    controller.addJavaScriptHandler(
      handlerName: 'searchSymbols',
      callback: (arguments) {
        final String userInput = arguments[0];
        // Only 1 exchange on example, not needed
        // final String exchange = arguments[1];
        final String symbolType = arguments[2];

        final List<SearchSymbolResultItem> result =
            historical.searchSymbol(userInput, symbolType);
        return result;
      },
    );

    controller.addJavaScriptHandler(
      handlerName: 'resolveSymbol',
      callback: (arguments) {
        final String symbolName = arguments[0];
        final SymbolData? result = historical.getSymbol(symbolName);

        if (result != null) {
          return result.getLibrarySymbolInfo();
        } else {
          return 'Symbol not found!';
        }
      },
    );

    controller.addJavaScriptHandler(
      handlerName: 'getBars',
      callback: (arguments) async {
        final LibrarySymbolInfo symbolInfo =
            LibrarySymbolInfo.fromJson(arguments[0]);
        // Only 1 resolution on example, not needed
        // final String resolution = arguments[1];
        final PeriodParams periodParams = PeriodParams.fromJson(arguments[2]);

        var symbol = historical.getSymbol(symbolInfo.name);
        if (symbol == null) {
          return 'Symbol not found';
        } else {
          var result = await symbol.getDataRange(
            tzMillisecond(periodParams.from * 1000),
            tzMillisecond(periodParams.to * 1000),
          );
