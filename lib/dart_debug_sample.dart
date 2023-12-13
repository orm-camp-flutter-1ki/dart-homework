import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() => '경오${(int.parse(nowDate.substring(5, 7)) / 2).ceil()}국';

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);
    print('what ? \n$timeDataOne');
    String result = timeDataOne.first.ty12;

    final nowTime = DateTime.now();
    // print('$nowTime hour:${nowTime.hour} Type : ${nowTime.hour.runtimeType}');
    if (0 <= nowTime.hour && nowTime.hour < 2) {
      return timeDataOne.first.ty1;
    } else if (4 <= nowTime.hour && nowTime.hour < 6) {
      return timeDataOne.first.ty2;
    } else if (6 <= nowTime.hour && nowTime.hour < 8) {
      return timeDataOne.first.ty3;
    } else if (8 <= nowTime.hour && nowTime.hour < 10) {
      return timeDataOne.first.ty4;
    } else if (10 <= nowTime.hour && nowTime.hour < 12) {
      return timeDataOne.first.ty5;
    } else if (12 <= nowTime.hour && nowTime.hour < 14) {
      return timeDataOne.first.ty6;
    } else if (16 <= nowTime.hour && nowTime.hour < 18) {
      return timeDataOne.first.ty7;
    } else if (18 <= nowTime.hour && nowTime.hour < 20) {
      return timeDataOne.first.ty8;
    } else if (20 <= nowTime.hour && nowTime.hour < 22) {
      return timeDataOne.first.ty9;
    } else if (22 <= nowTime.hour && nowTime.hour < 24) {
      return timeDataOne.first.ty10;
    }

    return result;
  }



  List<YukymTimeModel> _getTimeDataOne(String nowDate) {
    List<YukymTimeModel> timeDataOne = [];
    for (int i = 0; i < 24; i++) {
      timeDataOne.add(YukymTimeModel());
    }
    return timeDataOne;
  }
}

class YukymTimeModel {
  String ty1 = '갑자1국';
  String ty2 = '갑자2국';
  String ty3 = '갑자3국';
  String ty4 = '갑자4국';
  String ty5 = '갑자5국';
  String ty6 = '갑자6국';
  String ty7 = '갑자7국';
  String ty8 = '갑자8국';
  String ty9 = '갑자9국';
  String ty10 = '갑자10국';
  String ty11 = '갑자11국';
  String ty12 = '갑자12국';

  @override
  String toString() {
    return 'YukymTimeModel{ty1: $ty1, ty2: $ty2, ty3: $ty3, ty4: $ty4, ty5: $ty5, ty6: $ty6, ty7: $ty7, ty8: $ty8, ty9: $ty9, ty10: $ty10, ty11: $ty11, ty12: $ty12}';
  }
}
