import 'dart:convert';

import 'package:flutter_zenn_trend/core/domain/entity/article.dart';
import 'package:flutter_zenn_trend/core/gateway/datasource/article_datasource.dart';
import 'package:http/http.dart' as http;

class ArticleDatasourceImpl extends ArticleDatasource {
  @override
  Future<List<Article>> fetchRepositories(
    String title,
    String slug,
    String username,
    int likedNum,
  ) async {
    final url = Uri.parse('https://zenn-api.netlify.app/trendTech.json');
    final result = await http.get(url);
    if (result.statusCode == 200) {
      final List<dynamic> jsonArray = json.decode(result.body);
      final articleList =
          jsonArray.map((json) => Article.fromJson(json)).toList();
      return articleList;
    } else {
      return Future.error(Exception());
    }
  }
}
