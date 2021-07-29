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
}
