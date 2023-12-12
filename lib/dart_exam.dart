import 'dart_debug_sample.dart';

void main() {
  YukymController yukymController = YukymController();

  // DateFormat 이 잘못되있음.
  // 시간 변환 getTyB 쪽 if문 몇개가 빠져있음.

  print(yukymController.nowDate);
  print(yukymController.getTyA()); // 해당 월에 맞는 자시의 국 표시
  print(yukymController.getTyB()); // 해당 시간에 맞는 자시의 국 표시
}
