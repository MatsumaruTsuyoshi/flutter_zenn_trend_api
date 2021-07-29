import 'package:flutter/material.dart';
import 'package:flutter_zenn_trend/modules/article_list/model/article_list_item_model.dart';
import 'package:flutter_zenn_trend/modules/article_list/widget/article_web_view.dart';

class ArticleListItemWidget extends StatelessWidget {
  final ArticleListItemModel _model;
  const ArticleListItemWidget(ArticleListItemModel model)
      : _model = model,
        super();
  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        title: Text('${_model.articleTitle}'),
        trailing: Column(children: [
          Icon(
            Icons.favorite,
            color: Colors.pinkAccent,
          ),
          Text('${_model.likedCount}'),
        ]),
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            print(
                'https://zenn.dev/${_model.username}/articles/${_model.slug}');
            return ArticleWebView(
              linkUrl:
                  'https://zenn.dev/${_model.username}/articles/${_model.slug}',
            );
          }));
        },
      ),
    );
  }
}
