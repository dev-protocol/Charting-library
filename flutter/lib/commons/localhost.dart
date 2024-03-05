import 'dart:async';

import 'package:flutter_inappwebview/flutter_inappwebview.dart';

LocalhostManager get localhostManager {
  var instance = LocalhostManager._instance;
  if (instance == null) {
    instance = LocalhostManager._internal();
    LocalhostManager._instance = instance;
  }

  return instance;
}

class LocalhostManager {
  static const int port = 8080;
  static LocalhostManager? _instance;
  LocalhostManager._internal();

  InAppLocalhostServer? _localhostServer;

  bool get isRunning => _localhostServer?.isRunning() ?? false;

