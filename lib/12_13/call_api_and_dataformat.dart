import 'dart:convert';

Future<String> getMovieInfo() async {
  await Future.delayed(Duration(seconds: 2));
  final mockData = {
    'title': 'Star Wars',
    'director': 'George Lucas',
    'year': '1977',
  };
  return jsonEncode(mockData);
}

/*
 jsonEncode(): Map 데이터를 Json형태의 문자열로 변환해주는 함수
 jsonDecode(): Json형태의 문자열을 Map<String, dynamic> 데이터로 변환해주는 함수
 위 함수를 사용하여 directir가 누군지 출력해보시오
*/
main() async {
  final movieInfo = await getMovieInfo();
  final movieInfoMap = jsonDecode(movieInfo);
  print(movieInfoMap['director']);
}
