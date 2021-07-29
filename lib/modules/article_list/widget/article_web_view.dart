import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class ArticleWebView extends StatelessWidget {
  ArticleWebView({required this.linkUrl});
  final String linkUrl;

  @override
  Widget build(BuildContext context) {
    return WebView(
      initialUrl: linkUrl,
    );
  }
}
