import 'package:flutter/foundation.dart';
import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

abstract class ArticleDatasource {
  Future<List<Article>> fetchRepositories({@required String baseUrl}
      // String title,
      // String slug,
      // String username,
      // int likedNum,
      );
}
