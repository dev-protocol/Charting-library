import 'dart:async';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

LocalhostManager get localhostManager {
  var instance = LocalhostManager._instance;
  if (instance == null) {
    instance = LocalhostManager._internal();
    LocalhostManager._instance = instance;
  }

