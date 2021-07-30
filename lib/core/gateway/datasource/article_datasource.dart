import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

abstract class ArticleDatasource {
  Future<List<Article>> fetchRepositories(
    String title,
    String slug,
    String username,
    int likedNum,
  );
}
