class NewsappModel {
  final String status;
  final int totalResults;
  final List<dynamic> articles;

  new({required this.status, required this.totalResults, required this.articles});

  factory NewsappModel.fromJson(Map<String, dynamic> json){
    return NewsappModel(
      status: json['status'],
      totalResults: json['totalResults'],
      articles: json['articles'],
    );
  }
}