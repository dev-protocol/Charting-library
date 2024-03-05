import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart';

late Location tzLocation;

void setupTZLocation() {
  tzLocation = getLocation('Asia/Jakarta');
  setLocalLocation(tzLocation);
}

TZDateTime tzNow() {
  return TZDateTime.now(tzLocation);
}

TZDateTime tzSecond(int second) {
  return tzMillisecond(second * 1000);
}

