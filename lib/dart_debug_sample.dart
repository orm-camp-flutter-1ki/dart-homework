import 'package:intl/intl.dart';
import 'dart_debug_sample.dart';

class YukymController {
  // DateTime.parse(_userData.value!.selectDate)
  //String nowDate = DateFormat('yyyy-mm-dd').format(DateTime.now());
  String nowDate = DateFormat('yyyy-MM-dd').format(DateTime.now());

  // 데이트 타임 공식문서을 확인하면  mm 는 분을 의미하고 MM 는 월을 의미한다.

  late String nowTime;

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);

    if (timeDataOne.isNotEmpty) {
      nowTime = timeDataOne.first.ty1;

      final month = nowDate.substring(5, 7);
      if (month == '01' || month == '02') {
        return '경오1국';
      } else if (month == '03' || month == '04') {
        return '경오2국';
      } else if (month == '05' || month == '06') {
        return '경오3국';
      } else if (month == '07' || month == '08') {
        return '경오4국';
      } else if (month == '09' || month == '10') {
        return '경오5국';
      } else if (month == '11' || month == '12') {
        return '경오6국';
      }
      return nowTime;
    } else {
      // Handle the case when the list is empty
      return '경오7국'; // Or any other appropriate action
    }
  }

  String getTyB() {
    List<YukymTimeModel> timeDataOne = _getTimeDataOne(nowDate);
    String result = timeDataOne.first.ty12;
      // and : && a와 b 둘다 true 면 true
     //  or: || a 또는 b 둘중하나만 true 전체 true다 .
     // 두시간마다 조건을 주도록 되어있는데 2시~4시 와 14~16시 빠진게 있고  return 마지막이 ty10 밑에 모델 클레스 보면 마지막 ty12 다 .
    final nowTime = DateTime.now();
    if (nowTime.hour >= 0 && nowTime.hour < 2) {
      return timeDataOne.first.ty1;
    }else if (nowTime.hour >= 2 && nowTime.hour < 4) {
      return timeDataOne.first.ty2;
    } else if (nowTime.hour >= 4 && nowTime.hour < 6) {
      return timeDataOne.first.ty3;
    } else if (nowTime.hour >= 6 && nowTime.hour < 8) {
      return timeDataOne.first.ty4;
    } else if (nowTime.hour >= 8 && nowTime.hour < 10) {
      return timeDataOne.first.ty5;
    } else if (nowTime.hour >= 10 && nowTime.hour < 12) {
      return timeDataOne.first.ty6;
    } else if (nowTime.hour >= 12 && nowTime.hour < 14) {
      return timeDataOne.first.ty7;
    } else if (nowTime.hour >= 14 && nowTime.hour < 16) {
      return timeDataOne.first.ty8;
    } else if (nowTime.hour >= 16 && nowTime.hour < 18) {
      return timeDataOne.first.ty9;
    } else if (nowTime.hour >= 18 && nowTime.hour < 20) {
      return timeDataOne.first.ty10;
    } else if (nowTime.hour >= 20 && nowTime.hour < 22) {
      return timeDataOne.first.ty11;
    } else if (nowTime.hour >= 22 && nowTime.hour < 24) {
      return timeDataOne.first.ty12;
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
}


void main() {
  YukymController yukymController = YukymController();
  print(yukymController.getTyA()); // 해당 월에 맞는 자시의 국 표시
  print(yukymController.getTyB()); // 해당 시간에 맞는 자시의 국 표시
}
