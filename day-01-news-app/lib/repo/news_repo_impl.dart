import 'package:bloc_example/model/news_model.dart';

abstract class NewsRepo{
  Future<List<NewsModel>> getAllNews();
}