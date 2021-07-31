import 'package:flutter_zenn_trend/core/domain/entity/article.dart';
import 'package:flutter_zenn_trend/core/domain/repository/article_repository.dart';
import 'package:flutter_zenn_trend/core/gateway/datasource/article_datasource.dart';

class ArticleRepositoryImpl implements ArticleRepository {
  final ArticleDatasource _datasource;
  ArticleRepositoryImpl(this._datasource);

  @override
  Future<List<Article>> fetchRepositories(
    String baseUrl,
    // String title,
    // String slug,
    // String username,
    // int likedNum,
  ) async {
    return _datasource.fetchRepositories(
      baseUrl: baseUrl,
      // title,
      // slug,
      // username,
      // likedNum,
    );
  }
}
