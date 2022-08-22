part of 'news_bloc.dart';

abstract class NewsState extends Equatable {
  const NewsState();

  @override
  List<Object> get props => [];
}

class NewsInitial extends NewsState {}

class NewsLoading extends NewsState {}

class NewsFailure extends NewsState {
  final String message;

  const NewsFailure(this.message);

  @override
  List<Object> get props => [message];
}

class NewsSuccess extends NewsState {
  final List<NewsModel> newsP1;
  final List<NewsModel> newsP2;
  final List<NewsModel> newsP3;
  final List<NewsModel> newsP4;
  final List<NewsModel> newsP5;
  final List<NewsModel> newsP6;
  final List<NewsModel> newsP7;

  const NewsSuccess(this.newsP1, this.newsP2, this.newsP3, this.newsP4,
      this.newsP5, this.newsP6, this.newsP7);

  @override
  List<Object> get props => [newsP1];
}
