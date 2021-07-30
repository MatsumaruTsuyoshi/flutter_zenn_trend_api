import 'package:flutter_zenn_trend/core/gateway/provider/article_repository_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'article_list_controller.dart';
import 'article_list_state.dart';

final articleListControllerProvider =
    StateNotifierProvider<ArticleListController, ArticleListState>(
        (ref) => ArticleListController(ref.read(articleRepositoryProvider)));
