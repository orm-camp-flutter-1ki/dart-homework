import 'package:intl/intl.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (timeDataOne.isNotEmpty) {
      nowTime = timeDataOne.first.ty1;

      final month = nowDate.substring(5, 7);
      final intMonth = int.parse(month);

      switch (intMonth) {
        case (1 || 2):
          return '경오1국';
        case (3 || 4):
          return '경오2국';
        case (5 || 6):
          return '경오3국';
        case (7 || 8):
          return '경오4국';
        case (9 || 10):
          return '경오5국';
        case (11 || 12):
          return '경오6국';
        default:
          throw Exception('month Error');
      }
    } else {
      // Handle the case when the list is empty
      return '경오7국'; // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);
    String result = timeDataOne.first.ty12;

    final nowTime = DateTime.now();
    if (0 <= nowTime.hour && nowTime.hour < 2) {
      return timeDataOne.first.ty1;
    } else if (2 <= nowTime.hour && nowTime.hour < 4) {
      return timeDataOne.first.ty2;
    } else if (4 <= nowTime.hour && nowTime.hour < 6) {
      return timeDataOne.first.ty3;
    } else if (6 <= nowTime.hour && nowTime.hour < 8) {
      return timeDataOne.first.ty4;
    } else if (8 <= nowTime.hour && nowTime.hour < 10) {
      return timeDataOne.first.ty5;
    } else if (10 <= nowTime.hour && nowTime.hour < 12) {
      return timeDataOne.first.ty6;
    } else if (12 <= nowTime.hour && nowTime.hour < 14) {
      return timeDataOne.first.ty7;
    } else if (14 <= nowTime.hour && nowTime.hour < 16) {
      return timeDataOne.first.ty8;
    } else if (16 <= nowTime.hour && nowTime.hour < 18) {
      return timeDataOne.first.ty9;
    } else if (18 <= nowTime.hour && nowTime.hour < 20) {
      return timeDataOne.first.ty10;
    } else if (20 <= nowTime.hour && nowTime.hour < 22) {
      return timeDataOne.first.ty11;
    } else if (22 <= nowTime.hour && nowTime.hour < 24) {
      return timeDataOne.first.ty12;
    }
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
}
