
class Article {
  final String title;
  final String urlToImage;
  final String content;
  final String source;
  final String publishedAt;
  final String category;

  Article({
    required this.title,
    required this.urlToImage,
    required this.content,
    required this.source,
    required this.publishedAt,
    required this.category,
  });

  factory Article.fromJson(Map<String, dynamic> json) {
    return Article(
      title: json['title'] ?? '',
      urlToImage: json['urlToImage'] ?? '',
      content: json['content'] ?? '',
      source: json['source']['name'] ?? '',
      publishedAt: json['publishedAt'] ?? '',
      category: json['category'] ?? '',  // Thêm lĩnh vực
    );
  }
}