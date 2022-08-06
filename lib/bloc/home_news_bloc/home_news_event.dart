part of 'home_news_bloc.dart';

abstract class HomeNewsEvent extends Equatable {
  const HomeNewsEvent();

  @override
  List<Object> get props => [];
}

class GetLatest extends HomeNewsEvent {}
