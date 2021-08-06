import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

//abstractってなに？
abstract class ArticleRepository {
  Future<List<Article>> fetchRepositories();
}
