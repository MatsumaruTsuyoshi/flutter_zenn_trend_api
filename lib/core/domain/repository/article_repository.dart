import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

//abstractってなに？
abstract class ArticleRepository {
  Future<List<Article>> fetchRepositories(
    String baseUrl,
    // String title,
    // String slug,
    // String username,
    // int likedNum,
  );
}
