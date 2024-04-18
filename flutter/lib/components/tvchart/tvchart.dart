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

