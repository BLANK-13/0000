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
        final newsP1 = await newsRepository.getContent(1);
        final newsP2 = await newsRepository.getContent(2);
        final newsP3 = await newsRepository.getContent(3);
        final newsP4 = await newsRepository.getContent(4);
        final newsP5 = await newsRepository.getContent(5);
        final newsP6 = await newsRepository.getContent(6);
        final newsP7 = await newsRepository.getContent(7);
        emit(NewsSuccess(
          newsP1.news,
          newsP2.news,
          newsP3.news,
          newsP4.news,
          newsP5.news,
          newsP6.news,
          newsP7.news,
        ));
      } catch (e) {
        emit(NewsFailure(e.toString()));
      }
    });
  }
}
