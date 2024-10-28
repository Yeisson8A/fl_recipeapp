import 'dart:convert';

import 'models.dart';

class FeedDisplay {
    String displayName;
    List<String> images;
    String flag;
    Source source;
    List<Profile> profiles;
    dynamic displayPrepStepsInline;
    List<dynamic> collections;

    FeedDisplay({
        required this.displayName,
        required this.images,
        required this.flag,
        required this.source,
        required this.profiles,
        required this.displayPrepStepsInline,
        required this.collections,
    });

    factory FeedDisplay.fromRawJson(String str) => FeedDisplay.fromJson(json.decode(str));

    factory FeedDisplay.fromJson(Map<String, dynamic> json) => FeedDisplay(
        displayName: json["displayName"],
        images: List<String>.from(json["images"].map((x) => x)),
        flag: json["flag"],
        source: Source.fromJson(json["source"]),
        profiles: List<Profile>.from(json["profiles"].map((x) => Profile.fromJson(x))),
        displayPrepStepsInline: json["displayPrepStepsInline"],
        collections: List<dynamic>.from(json["collections"].map((x) => x)),
    );
}
