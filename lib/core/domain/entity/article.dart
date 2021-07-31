import 'dart:ui';

class Article {
  final String? title;
  final String? slug;
  final String? username;
  final int? likedCount;

  Article({
    this.title,
    this.slug,
    this.username,
    this.likedCount,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'],
      slug: json['slug'],
      username: json['user']['username'],
      likedCount: json['likedCount'],
    );
  }

  @override
  bool operator ==(Object other) {
    // TODO: implement ==
    return other is Article &&
        other.title == title &&
        other.slug == slug &&
        other.username == username &&
        other.likedCount == likedCount;
  }

  @override
  // TODO: implement hashCode
  int get hashCode => hashValues(title, slug, username, likedCount);
}
