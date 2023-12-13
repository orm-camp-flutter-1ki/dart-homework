import 'package:dart_debug_sample/dart_debug_sample.dart';


void main() {
  YukymController yukymController = YukymController();


  // 해당 월에 맞는 자시의 국 표시
  String a = yukymController.getTyA();
  print(a);

  // 해당 시간에 맞는 자시의 국 표시
  String b = yukymController.getTyB();
  print(b);


}
