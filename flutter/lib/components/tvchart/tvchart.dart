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

