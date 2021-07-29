import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_zenn_trend/modules/article_list/controller/article_list_controller_provider.dart';
import 'package:flutter_zenn_trend/modules/article_list/widget/article_list_item_widget.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class ArticleListPage extends HookWidget {
  @override
  Widget build(BuildContext context) {
    final controller = useProvider(articleListControllerProvider.notifier);
    return FutureBuilder(
        future: controller.load(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return _buildList();
          } else {
            return const CircularProgressIndicator();
          }
        });
  }

  Widget _buildList() {
    return HookBuilder(builder: (context) {
      final data = useProvider(
          articleListControllerProvider.select((value) => value.data));
      return ListView.builder(
          itemCount: data.length,
          itemBuilder: (context, index) {
            return ArticleListItemWidget(data[index]);
          });
    });
  }
}
