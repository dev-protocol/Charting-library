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

TZDateTime tzMillisecond(int millisecond) {
  return TZDateTime.fromMillisecondsSinceEpoch(tzLocation, millisecond);
}

TZDateTime tzToday([
  int hour = 0,
  int minute = 0,
  int second = 0,
  int millisecond = 0,
  int microsecond = 0,
]) {
  var now = tzNow();

