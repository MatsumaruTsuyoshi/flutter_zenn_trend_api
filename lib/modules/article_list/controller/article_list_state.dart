import 'package:flutter_zenn_trend/modules/article_list/model/article_list_item_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'article_list_state.freezed.dart';

@freezed
class ArticleListState with _$ArticleListState {
  const factory ArticleListState(
      {@Default([]) List<ArticleListItemModel> data}) = _ArticleListState;
}
