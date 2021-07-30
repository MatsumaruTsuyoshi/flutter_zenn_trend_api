import 'package:flutter/cupertino.dart';
import 'package:flutter_zenn_trend/core/domain/repository/article_repository.dart';
import 'package:flutter_zenn_trend/core/gateway/article_impl/article_repository_impl.dart';
import 'package:flutter_zenn_trend/core/gateway/provider/article_datasource_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final articleRepositoryProvider = Provider(
    (ref) => ArticleRepositoryImpl(ref.read(articleDatasourceProvider)));
