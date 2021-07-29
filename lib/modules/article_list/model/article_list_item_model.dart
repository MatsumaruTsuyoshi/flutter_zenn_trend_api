import 'package:flutter_zenn_trend/core/domain/entity/article.dart';

class ArticleListItemModel {
  final String? articleTitle;
  final String? slug;
  final String? username;
  final int? likedCount;

  ArticleListItemModel._(
      {required this.articleTitle,
      required this.slug,
      required this.username,
      required this.likedCount});

  factory ArticleListItemModel.from(Article article) {
    return ArticleListItemModel._(
      articleTitle: article.title,
      slug: article.slug,
      username: article.username,
      likedCount: article.likedCount,
    );
  }
}
