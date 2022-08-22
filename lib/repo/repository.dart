import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:trainee_task/models/news_response.dart';

class NewsRepository {
  static String mainUrl =
      'https://615d4dea12571a001720752d.mockapi.io/news?page={n}&limit=7';
  final http.Client client;

  NewsRepository(this.client);

  Future<NewsModelResponse> getContent(int n) async {
    try {
      final headers = {
        'Content-Type': 'application/json; charset=UTF-8',
        'accept': 'application/json; charset=UTF-8',
      };
      final url = mainUrl.replaceAll('{n}', n.toString());
      final response = await client.get(getUri(url), headers: headers);
      print(response.body);
      if (response.statusCode == 200) {
        final data = json.decode(utf8.decode(response.bodyBytes));
        return NewsModelResponse.fromList(data);
      } else {
        throw Exception('Something went wrong');
      }
    } catch (error) {
      throw Exception(error.toString());
    }
  }

  Uri getUri(String url) {
    return Uri.parse(url);
  }
}
