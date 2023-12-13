class YukymController {
  // DateTime.parse(_userData.value!.selectDate)

  DateTime now = DateTime.now();

  // 1. 자시의 국 : 갑자1국 = getTyOne()의 값
  String getTyA() {
    // 1월~2월=경오1국, 3월~4월=경오2국...11월~12월=경오6국 2개월 단위로 수정
    int index = (now.month / 2).ceil();
    return '경오$index국';
  }

  String getTyB() {
    // 0시~1시=갑자1국, 2시~3시=갑자2국...22시~23시=갑자12국, 2시간 단위로 수정;;;
    // 원본은 4시~5시=갑자2국 으로, 14시~15시가 비어있었는데 실수가 아니고 의도라면 수정 필요.
    int index = 1 + (now.hour / 2).floor();
    return '갑자$index국';
  }
}
