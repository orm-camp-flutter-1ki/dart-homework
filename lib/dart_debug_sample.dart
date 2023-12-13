import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() => '경오${(int.parse(nowDate.substring(5, 7)) / 2).ceil()}국';

  String getTyB() => '갑자${(DateTime.now().hour / 2).ceil()}국';
}
