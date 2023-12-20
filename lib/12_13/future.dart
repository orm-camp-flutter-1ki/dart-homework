import 'dart:io';

Future<void> modifySampleCsv() async {
  final file = File('sample.csv');
  // 파일이 존재하는지 확인
  // 파일이 존재하면 파일을 읽어서 '한석봉'이라는 문자열이 포함되어 있는지 확인
  // 포함되어 있으면 '한석봉'을 '김석봉'으로 변경한 후 sample_copy.csv 파일로 저장
  await file.exists().then((exists) {
    if (exists) {
      file.readAsString().then((contents) {
        if (contents.contains('한석봉')) {
          final modifyText = contents.replaceAll('한석봉', '김석봉');
          File('sample_copy.csv').writeAsString(modifyText).then((_) {
            print('파일 수정 완료');
          });
        } else {
          print('한석봉을 찾을 수 없습니다.');
        }
      });
    } else {
      print('파일을 찾을 수 없습니다.');
    }
  }).catchError((e) {
    print('오류 발생: $e');
  });
}

void main() {
  modifySampleCsv();
  print('modifySampleCsv 실행');
}
