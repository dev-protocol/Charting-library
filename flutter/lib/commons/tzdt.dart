import 'package:intl/intl.dart';
import 'package:timezone/timezone.dart';

late Location tzLocation;

void setupTZLocation() {
  tzLocation = getLocation('Asia/Jakarta');
  setLocalLocation(tzLocation);
}

