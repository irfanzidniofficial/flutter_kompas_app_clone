import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter_kompas_app_clone/src/features/news/data/news_service.dart';
import 'package:flutter_kompas_app_clone/src/features/news/domain/news.dart';

part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  NewsBloc() : super(NewsInitial()) {
    on<NewsEvent>((event, emit) async {
      if (event is NewsGet) {
        try {
          emit(NewsLoading());
          final news = await NewsService().getNews();
          emit(NewsSuccess(news));
        } catch (e) {
          emit(NewsFailed(e.toString()));
        }
      }
    });
  }
}
