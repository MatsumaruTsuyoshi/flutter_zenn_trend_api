import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zenn_trend/app.dart';
import 'package:flutter_zenn_trend/core/domain/entity/article.dart';
import 'package:flutter_zenn_trend/core/gateway/article_impl/article_repository_impl.dart';
import 'package:flutter_zenn_trend/core/gateway/datasource/article_datasource.dart';
import 'package:flutter_zenn_trend/modules/article_list/controller/article_list_controller_provider.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'article_datasource_test.mocks.dart';
import 'package:flutter_zenn_trend/modules/article_list/controller/article_list_controller.dart';
import 'package:flutter_zenn_trend/modules/article_list/controller/article_list_state.dart';

@GenerateMocks([ArticleDatasource])
void main() {
  var articleDatasource = MockArticleDatasource();

  ///ユニットテスト
  ///モック化したarticleDatasourceをDIしている。
  test('任意のデータが帰ってきたと想定したときにちゃんとデータを読み込めているか', () async {
    final container = ProviderContainer(overrides: [
      articleListControllerProvider.overrideWithProvider(StateNotifierProvider<
              ArticleListController, ArticleListState>(
          (ref) =>
              ArticleListController(ArticleRepositoryImpl(articleDatasource))))
    ]);

    ///ここでarticleDatasource.fetchRepositories()を実行したら[Article(title: 'title')]が帰ってくると想定している
    when(articleDatasource.fetchRepositories())
        .thenAnswer((_) async => [Article(title: '初めてのユニットテスト')]);

    ///オーバーライドしたプロバイダーを実行させている
    final model = container.read(articleListControllerProvider.notifier);
    await model.load();

    ///オーバーライドしたプロバイダーを実行させたときに帰ってきた値を監視している。
    final data = container
        .listen(articleListControllerProvider.select((value) => value.data));

    expect(data.read()[0].articleTitle, '初めてのユニットテスト');
  });

  ///ウィジェットテスト。任意のデータが帰ってきたときにちゃんと表示されているか確認するためのテスト
  testWidgets('ウィジェットテスト', (tester) async {
    when(articleDatasource.fetchRepositories()).thenAnswer((_) async => [
          Article(
              title: '初めてのユニットテスト',
              slug: '任意の14桁',
              username: 'まつまる',
              likedCount: 100)
        ]);
    await tester.pumpWidget(
      ProviderScope(overrides: [
        articleListControllerProvider.overrideWithProvider(
            StateNotifierProvider<ArticleListController, ArticleListState>(
                (ref) => ArticleListController(
                    ArticleRepositoryImpl(articleDatasource))))
      ], child: App()),
    );
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
    await tester.pump();
    // No-longer loading
    expect(find.byType(CircularProgressIndicator), findsNothing);

    expect(find.text('初めてのユニットテスト'), findsOneWidget);
  });
}

// final _server = MockWebServer(port: 8081);
// late ArticleDatasource _articleDatasource;
//
// setUp(() {
// _articleDatasource = ArticleDatasourceImpl();
// _server.start();
// });
//
// tearDown(_server.shutdown);
// test('Http status code "200 OK" with get method testing', () async {
// _server.enqueue(
// httpCode: 200,
// body:
// '[{ "title" : "タイトルが表示される","slug":"任意の14桁","likedCount":100, "user":{"username":"ユーザーネーム"}}]');
// final responseBody = await _articleDatasource.fetchRepositories();
//
// expect(
// responseBody,
// equals([
// Article(
// title: "タイトルが表示される",
// slug: "任意の14桁",
// username: "ユーザーネーム",
// likedCount: 100)
// ]));
// });
