

abstract class YukymTimeModel {
  final List<String> _tyA = [
    '경오1국',
    '경오2국',
    '경오3국',
    '경오4국',
    '경오5국',
    '경오6국',
  ];
  final List<String> _tyB = [
    '갑자1국',
    '갑자2국',
    '갑자3국',
    '갑자4국',
    '갑자5국',
    '갑자6국',
    '갑자7국',
    '갑자8국',
    '갑자9국',
    '갑자10국',
    '갑자11국',
    '갑자12국',
  ];

  YukymTimeModel({tyA, tyB});

  List<String> get tyB => _tyB;
  List<String> get tyA => _tyA;
}

class YukymController extends YukymTimeModel {
  // DateTime.parse(_userData.value!.selectDate)

  YukymController();

  DateTime nowDateTime = DateTime.now();

  String getTyA() {
    final month = nowDateTime.month.toString();
    String result = '';
    switch (month) {
      case ('01' || '02'):
        result = tyA[0];
        break;
      case ('03' || '04'):
        result = tyA[1];
        break;
      case ('05' || '06'):
        result = tyA[2];
        break;
      case ('07' || '08'):
        result = tyA[3];
        break;
      case ('09' || '10'):
        result = tyA[4];
        break;
      case ('11' || '12'):
        result = tyA[5];
        break;
    }
    return result;
  }

  String getTyB() {
    final hour = nowDateTime.hour.toInt();
    String result = '';
    switch (hour) {
      case >= 0 && < 2:
        result = tyB[0];
        break;
      case >= 2 && < 4:
        result = tyB[1];
        break;
      case >= 4 && < 6:
        result = tyB[2];
        break;
      case >= 6 && < 8:
        result = tyB[3];
        break;
      case >= 8 && < 10:
        result = tyB[4];
        break;
      case >= 10 && < 12:
        result = tyB[5];
        break;
      case >= 12 && < 14:
        result = tyB[6];
        break;
      case >= 14 && < 16:
        result = tyB[7];
        break;
      case >= 16 && < 18:
        result = tyB[8];
        break;
      case >= 18 && < 20:
        result = tyB[9];
        break;
      case >= 20 && < 22:
        result = tyB[10];
        break;
      case >= 22 && < 24:
        result = tyB[11];
        break;
    }
    return result;
  }
}
