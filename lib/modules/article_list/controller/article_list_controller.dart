import 'dart:convert';
import 'package:flutter_zenn_trend/core/domain/entity/article.dart';
import 'package:flutter_zenn_trend/core/domain/repository/article_repository.dart';
import 'package:flutter_zenn_trend/modules/article_list/controller/article_list_state.dart';
import 'package:flutter_zenn_trend/modules/article_list/model/article_list_item_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:http/http.dart' as http;

class ArticleListController extends StateNotifier<ArticleListState> {
  ArticleListController() : super(const ArticleListState());

  // final ArticleRepository _articleRepository;

  Future<void> load() async {
    final url = Uri.parse('https://zenn-api.netlify.app/trendTech.json');
    final response = await http.get(url);
    if (response.statusCode == 200) {
      final List<dynamic> jsonArray = json.decode(response.body);
      final articleList =
          jsonArray.map((json) => Article.fromJson(json)).toList();

      state = state.copyWith.call(
          data: articleList.map((e) {
        return ArticleListItemModel.from(e);
      }).toList());
    } else {
      throw Exception('Failed to load article');
    }
  }
}
