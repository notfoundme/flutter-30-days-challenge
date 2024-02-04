import 'package:bloc/bloc.dart';
import 'package:bloc_example/bloc/news_bloc/news_event.dart';
import 'package:bloc_example/bloc/news_bloc/news_state.dart';
import 'package:bloc_example/model/news_model.dart';
import 'package:bloc_example/repo/news_repo.dart';
import 'package:bloc_example/repo/news_repo_impl.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final NewsRepo newsRepo = NewsRepoImpl();
  NewsBloc(super.initialState) {
    on((event, emit) async {
      if (event is NewsFetchEvent) {
        emit(LoadingNewsState());
        //Load data from server
        try {
          List<NewsModel> dataFromRepo = await newsRepo.getAllNews();
          emit(LoadedNewsState(dataFromRepo));
        } catch (e) {
          emit(ErrorNewsState("Error fetching data from Server"));
        }
      }
    });
  }
}
