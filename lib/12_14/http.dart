import 'package:http/http.dart' as http;
import 'dart:convert';

class MaskStore {
  final String addr;
  final String name;
  final String remainStat;

  MaskStore({required this.addr, required this.name, required this.remainStat});
}

Future<List<MaskStore>> fetchMaskStores() async {
  final url = Uri.parse('http://104.198.248.76:3000/mask');
  final response = await http.get(url);

  if (response.statusCode == 200) {
    List<MaskStore> stores = [];
    final data = jsonDecode(utf8.decode(response.bodyBytes))['stores'];

    for (final item in data) {
      if (item['addr'] != null &&
          item['name'] != null &&
          item['remain_stat'] != null) {
        stores.add(MaskStore(
          addr: item['addr'],
          name: item['name'],
          remainStat: item['remain_stat'],
        ));
      }
    }
    return stores;
  } else {
    throw Exception('마스크 정보 불러오기 실패');
  }
}

void main() async {
  try {
    List<MaskStore> stores = await fetchMaskStores();
    for (final store in stores) {
      print('${store.name}, ${store.addr}, ${store.remainStat}');
    }
  } catch (e) {
    print(e.toString());
  }
}
