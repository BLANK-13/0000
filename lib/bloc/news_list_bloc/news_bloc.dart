import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

import '../../models/news_model.dart';
import '../../repo/repository.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepository newsRepository;
  NewsBloc({required this.newsRepository}) : super(NewsInitial()) {
    on<OnGetNews>((event, emit) async {
      emit(NewsLoading());
      try {
        final news = await newsRepository.getContent(1);
        emit(NewsSuccess(news.news));
      } catch (e) {
        emit(NewsFailure(e.toString()));
      }
    });
  }
}
