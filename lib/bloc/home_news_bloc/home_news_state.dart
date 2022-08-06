part of 'home_news_bloc.dart';

abstract class HomeNewsState extends Equatable {
  const HomeNewsState();

  @override
  List<Object> get props => [];
}

class HomeNewsInitial extends HomeNewsState {}

class HomeNewsFailure extends HomeNewsState {
  final String message;

  const HomeNewsFailure(this.message);

  @override
  List<Object> get props => [message];
}

class HomeNewsSuccess extends HomeNewsState {
  final List<NewsModel> news;

  HomeNewsSuccess(this.news);

  @override
  List<Object> get props => [news];
}
