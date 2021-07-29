import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'article_list_controller.dart';
import 'article_list_state.dart';

final articleListControllerProvider =
    StateNotifierProvider<ArticleListController, ArticleListState>(
        (ref) => ArticleListController());
