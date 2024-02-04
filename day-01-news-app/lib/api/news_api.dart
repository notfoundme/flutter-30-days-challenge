import 'package:bloc_example/model/news_model.dart';

abstract class NewsApi{
   Future<List<NewsModel>> getAllNews();
}
