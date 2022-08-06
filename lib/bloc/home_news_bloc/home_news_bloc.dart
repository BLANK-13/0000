import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:trainee_task/repo/repository.dart';

import '../../models/news_model.dart';

part 'home_news_event.dart';
part 'home_news_state.dart';

class HomeNewsBloc extends Bloc<HomeNewsEvent, HomeNewsState> {
  final NewsRepository newsRepository;
  HomeNewsBloc({required this.newsRepository}) : super(HomeNewsInitial()) {
    on<GetLatest>((event, emit) async {
      emit(HomeNewsInitial());
      try {
        final news = await newsRepository.getContent(1);
        emit(HomeNewsSuccess(news.news));
      } catch (e) {
        HomeNewsFailure(e.toString());
      }
    });
  }
}
