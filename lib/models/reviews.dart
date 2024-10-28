import 'dart:convert';

class Reviews {
    String mobileSectionName;
    int totalReviewCount;
    double averageRating;
    List<dynamic> reviews;
    dynamic thisUserReview;
    String sortBy;

    Reviews({
        required this.mobileSectionName,
        required this.totalReviewCount,
        required this.averageRating,
        required this.reviews,
        required this.thisUserReview,
        required this.sortBy,
    });

    factory Reviews.fromRawJson(String str) => Reviews.fromJson(json.decode(str));

    factory Reviews.fromJson(Map<String, dynamic> json) => Reviews(
        mobileSectionName: json["mobileSectionName"],
        totalReviewCount: json["totalReviewCount"],
        averageRating: json["averageRating"]?.toDouble(),
        reviews: List<dynamic>.from(json["reviews"].map((x) => x)),
        thisUserReview: json["thisUserReview"],
        sortBy: json["sortBy"],
    );
}
