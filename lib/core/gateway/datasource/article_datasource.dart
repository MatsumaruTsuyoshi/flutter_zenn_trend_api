import 'package:flutter/foundation.dart';
import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

abstract class ArticleDatasource {
  Future<List<Article>> fetchRepositories();
}
