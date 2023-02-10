import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weptoon_app/models/webtoon_model.dart';

class ApiService {
  final String baseUrl = "https://webtoon-crawler.nomadcoders.workers.dev";
  final String testUrl = "http://13.209.114.45:8080/api/v1/banner/list";
  final String today = "today";

  void test() async {
    final url = Uri.parse(testUrl);
    final response = await http.get(url);

    print(response.body);
  }

  void getTodayToons() async {
    final url = Uri.parse('$baseUrl/$today');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> webtoons = jsonDecode(response.body);
      for (var webtoon in webtoons) {
        WebtoonModel.fromJson(webtoon);
      }
      return;
    }
    throw Error();
  }
}
