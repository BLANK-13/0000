class NewsModel {
  final String contentAr;
  final String contentEn;
  final String createdAt;
  final String id;
  final String image;
  final String titleAr;
  final String titleEn;

  NewsModel({
    required this.contentAr,
    required this.contentEn,
    required this.createdAt,
    required this.id,
    required this.image,
    required this.titleAr,
    required this.titleEn,
  });

  factory NewsModel.fromJson(Map<String, dynamic> json) => NewsModel(
        contentAr: json['content_ar'],
        contentEn: json['content_en'],
        createdAt: json['createdAt'],
        id: json['id'],
        image: json['image'],
        titleAr: json['title_ar'],
        titleEn: json['title_en'],
      );
}
