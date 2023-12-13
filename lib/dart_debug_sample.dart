class YukymController {
  // 월에 맞는 자시의 국 표시
  String getTyA({DateTime? date}) {
    final month = date?.month ?? DateTime.now().month;
    return '경오${(month / 2).ceil()}국';
  }

  // 시간에 맞는 자시의 국 표시
  String getTyB({DateTime? date}) {
    final hour = date?.hour ?? DateTime.now().hour;
    return '갑자${(hour / 2).ceil()}국';
  }
}
