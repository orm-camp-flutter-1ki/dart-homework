class YukymController {
  DateTime _nowTime;

  YukymController() : _nowTime = DateTime.now();

  String getTyA() => '경오${((_nowTime.month - 1) ~/ 2) + 1}국';

  String getTyB() => '갑자${(_nowTime.hour ~/ 2) + 1}국';
}
