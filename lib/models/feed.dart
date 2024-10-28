import 'dart:convert';

import 'models.dart';

class Feed {
    FeedSeo seo;
    String trackingId;
    String locale;
    Content content;
    String type;
    List<String> recipeType;
    bool proRecipe;
    FeedDisplay display;
    bool promoted;

    Feed({
        required this.seo,
        required this.trackingId,
        required this.locale,
        required this.content,
        required this.type,
        required this.recipeType,
        required this.proRecipe,
        required this.display,
        required this.promoted,
    });

    factory Feed.fromRawJson(String str) => Feed.fromJson(json.decode(str));

    factory Feed.fromJson(Map<String, dynamic> json) => Feed(
        seo: FeedSeo.fromJson(json["seo"]),
        trackingId: json["tracking-id"],
        locale: json["locale"],
        content: Content.fromJson(json["content"]),
        type: json["type"],
        recipeType: List<String>.from(json["recipeType"]),
        proRecipe: json["proRecipe"],
        display: FeedDisplay.fromJson(json["display"]),
        promoted: json["promoted"],
    );
}