class NewsArticle {
  final String title;
  final String description;
  final String author;
  final String url;
  final String urlToImage;

  NewsArticle({
    required this.title,
    required this.description,
    required this.author,
    required this.url,
    required this.urlToImage,
  });

  factory NewsArticle.fromJson(Map<String, dynamic> json) {
    return NewsArticle(
      title: json['title'],
      description: json['description'],
      author: json['author'],
      url: json['url'],
      urlToImage: json['urlToImage'],
    );
  }
}