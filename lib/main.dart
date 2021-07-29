import 'package:flutter/material.dart';
import 'package:flutter_zenn_trend/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(ProviderScope(child: App()));
}
//
// class MyApp extends StatelessWidget {
//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: MyHomePage(title: 'Flutter Demo Home Page'),
//     );
//   }
// }
//
// class MyHomePage extends StatefulWidget {
//   MyHomePage({Key? key, required this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _MyHomePageState createState() => _MyHomePageState();
// }
//
// class _MyHomePageState extends State<MyHomePage> {
//   int _counter = 0;
//
//   void _incrementCounter() {
//     setState(() {
//       _counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(widget.title),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               'You have pushed the button this many times:',
//             ),
//             Text(
//               '$_counter',
//               style: Theme.of(context).textTheme.headline4,
//             ),
//           ],
//         ),
//       ),
//       floatingActionButton: FloatingActionButton(
//         onPressed: () async {
//           // final json = await ZennClient.fetchArticle();
//           // print(json.map((e) => print(e.title)));
//         },
//         tooltip: 'Increment',
//         child: Icon(Icons.add),
//       ), // This trailing comma makes auto-formatting nicer for build methods.
//     );
//   }
// }
//
// class ZennClient {
//   static Future<List<Article>> fetchArticle() async {
//     final url = Uri.parse('https://zenn-api.netlify.app/trendTech.json');
//     final response = await http.get(url);
//     if (response.statusCode == 200) {
//       final List<dynamic> jsonArray = json.decode(response.body);
//       return jsonArray.map((json) => Article.fromJson(json)).toList();
//     } else {
//       throw Exception('Failed to load article');
//     }
//   }
// }
//
// class Article {
//   final String? title;
//   final String? url;
//   final User? user;
//
//   Article({this.title, this.url, this.user});
//
//   factory Article.fromJson(Map<String, dynamic> json) {
//     return Article(
//       title: json['title'],
//       url: json['slug'],
//       user: User.fromJson(json['user']),
//     );
//   }
// }
//
// class User {
//   final int? id;
//   final String? iconUrl;
//
//   User({this.id, this.iconUrl});
//
//   factory User.fromJson(Map<String, dynamic> json) {
//     return User(
//       id: json['id'],
//       iconUrl: json['avatarSmallUrl'],
//     );
//   }
// }
