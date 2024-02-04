import 'package:bloc_example/model/news_model.dart';

abstract class NewsState {}

///when the news is not being loaded
class InitialNewsState extends NewsState {}

///when the bloc starts to load news from server
class LoadingNewsState extends NewsState {}

/// when the bloc loads the news from server sucessfully
/// bloc must attach data if it is in [LoadedNewsState]
/// here the data is of type [List] of [NewsModel]
class LoadedNewsState extends NewsState {
  List<NewsModel> data;
  LoadedNewsState(this.data);
}

/// when the bloc fails to load the news from server
/// bloc must attach error message if it is in [ErrorNewsState]
/// here the message is of type [String]

class ErrorNewsState extends NewsState {
  String errorMessage;
  ErrorNewsState(this.errorMessage);
}
