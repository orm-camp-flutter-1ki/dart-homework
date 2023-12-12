import 'dart_debug_sample.dart';

void main() {
  YukymController yukymController = YukymController();
  print(yukymController.getTyA()); // 해당 월에 맞는 자시의 국 표시
  print(yukymController.getTyB()); // 해당 시간에 맞는 자시의 국 표시

  // nowDate의 값이 잘 저장되는지 test - 값이 바뀌면 안 됨
  print(yukymController.nowDate);


}
