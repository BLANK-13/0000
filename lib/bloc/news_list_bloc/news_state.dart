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
  final List<NewsModel> news;

  NewsSuccess(this.news);

  @override
  List<Object> get props => [news];
}
