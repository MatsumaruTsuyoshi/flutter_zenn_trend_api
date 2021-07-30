import 'package:flutter_zenn_trend/core/gateway/datasource_impl/article_datasource_impl.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleDatasourceProvider = Provider((ref) => ArticleDatasourceImpl());
