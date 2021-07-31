import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_zenn_trend/core/domain/entity/article.dart';
import 'package:flutter_zenn_trend/core/gateway/datasource/article_datasource.dart';
import 'package:flutter_zenn_trend/core/gateway/datasource_impl/article_datasource_impl.dart';
import 'package:mock_web_server/mock_web_server.dart';

void main() {
  final _server = MockWebServer(port: 8081);
  late ArticleDatasource _articleDatasource;

  setUp(() {
    _articleDatasource = ArticleDatasourceImpl();
    _server.start();
  });

  tearDown(_server.shutdown);
  test('Http status code "200 OK" with get method testing', () async {
    _server.enqueue(
        httpCode: 200,
        body:
            '[{ "title" : "タイトルが表示される","slug":"任意の14桁","likedCount":100, "user":{"username":"ユーザーネーム"}}]');
    final responseBody = await _articleDatasource.fetchRepositories(
        baseUrl: 'http://127.0.0.1:8081');

    expect(
        responseBody,
        equals([
          Article(
              title: "タイトルが表示される",
              slug: "任意の14桁",
              username: "ユーザーネーム",
              likedCount: 100)
        ]));
    // final request = _server.takeRequest();
    // expect(request.uri.path, '/endpoint');
  });
}
