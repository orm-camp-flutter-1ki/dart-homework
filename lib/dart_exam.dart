import 'dart_debug_sample.dart';
import 'package:intl/intl.dart';

void main() {
  YukymController yukymController = YukymController();
  print(DateFormat('yyyy-MM-dd HH:mm').format(yukymController.nowDateTime));
  print(yukymController.getTyA()); // 해당 월에 맞는 자시의 국 표시
  print(yukymController.getTyB()); // 해당 시간에 맞는 자시의 국 표시
}
