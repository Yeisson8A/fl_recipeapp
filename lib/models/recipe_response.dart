import 'dart:convert';
import 'models.dart';

class RecipeResponse {
    List<Feed> feed;
    RecipeResponseSeo seo;

    RecipeResponse({
        required this.feed,
        required this.seo,
    });

    factory RecipeResponse.fromRawJson(String str) => RecipeResponse.fromJson(json.decode(str));

    factory RecipeResponse.fromJson(Map<String, dynamic> json) => RecipeResponse(
        feed: List<Feed>.from(json["feed"].map((x) => Feed.fromJson(x))),
        seo: RecipeResponseSeo.fromJson(json["seo"]),
    );
}
