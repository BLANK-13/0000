import 'package:trainee_task/models/news_model.dart';

class NewsModelResponse {
  final List<NewsModel> news;
  final String error;

  NewsModelResponse(this.news, this.error);

  NewsModelResponse.fromList(List<dynamic> json)
      : news = json.map((e) => NewsModel.fromJson(e)).toList(),
        error = '';

  NewsModelResponse.withError(String errorValue)
      : news = [],
        error = errorValue;

  /// for now ???

}
