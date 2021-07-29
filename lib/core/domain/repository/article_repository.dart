import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

abstract class ArticleRepository {
  Future<List<Article>> fetchRepositories(String title, String url);
}
