class YukymController {
  final DateTime now = DateTime.now();

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() => '경오${now.month % 13}국';

  String getTyB() => '갑자${(now.hour ~/ 12) + (now.hour % 12)}국';
}
