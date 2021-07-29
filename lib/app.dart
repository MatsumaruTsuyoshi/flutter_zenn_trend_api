import 'package:flutter/material.dart';

import 'modules/article_list/article_list_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: ArticleListPage(),
        ),
      ),
    );
  }
}
