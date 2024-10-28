import 'dart:convert';

import 'models.dart';

class Details {
    String directionsUrl;
    String totalTime;
    String displayName;
    List<Image> images;
    String name;
    List<String> keywords;
    dynamic brand;
    String id;
    Attribution attribution;
    String recipeId;
    int numberOfServings;
    String globalId;
    int totalTimeInSeconds;
    double rating;

    Details({
        required this.directionsUrl,
        required this.totalTime,
        required this.displayName,
        required this.images,
        required this.name,
        required this.keywords,
        required this.brand,
        required this.id,
        required this.attribution,
        required this.recipeId,
        required this.numberOfServings,
        required this.globalId,
        required this.totalTimeInSeconds,
        required this.rating,
    });

    factory Details.fromRawJson(String str) => Details.fromJson(json.decode(str));

    factory Details.fromJson(Map<String, dynamic> json) => Details(
        directionsUrl: json["directionsUrl"],
        totalTime: json["totalTime"],
        displayName: json["displayName"],
        images: List<Image>.from(json["images"].map((x) => Image.fromJson(x))),
        name: json["name"],
        keywords: List<String>.from(json["keywords"].map((x) => x)),
        brand: json["brand"],
        id: json["id"],
        attribution: Attribution.fromJson(json["attribution"]),
        recipeId: json["recipeId"],
        numberOfServings: json["numberOfServings"],
        globalId: json["globalId"],
        totalTimeInSeconds: json["totalTimeInSeconds"],
        rating: json["rating"],
    );
}