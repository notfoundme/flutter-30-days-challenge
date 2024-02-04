import 'package:bloc_example/api/news_api.dart';
import 'package:bloc_example/api/news_api_impl.dart';
import 'package:bloc_example/model/news_model.dart';
import 'package:bloc_example/repo/news_repo_impl.dart';

class NewsRepoImpl implements NewsRepo{
   NewsApi newsApi = NewsMockApiImpl();
  @override
  Future<List<NewsModel>> getAllNews() async {
  return await newsApi.getAllNews();
  }

}