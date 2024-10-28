import 'dart:convert';

import 'models.dart';

class Content {
    dynamic description;
    List<dynamic> urbSubmitters;
    Tags tags;
    List<dynamic> preparationSteps;
    Videos? videos;
    MoreContent moreContent;
    TagsAds tagsAds;
    Details details;
    MoreContent relatedContent;
    List<IngredientLine> ingredientLines;
    String unitSystem;
    Reviews reviews;
    MoreContent relatedProducts;
    int preparationStepCount;
    Nutrition nutrition;
    Yums yums;

    Content({
        required this.description,
        required this.urbSubmitters,
        required this.tags,
        required this.preparationSteps,
        this.videos,
        required this.moreContent,
        required this.tagsAds,
        required this.details,
        required this.relatedContent,
        required this.ingredientLines,
        required this.unitSystem,
        required this.reviews,
        required this.relatedProducts,
        required this.preparationStepCount,
        required this.nutrition,
        required this.yums,
    });

    factory Content.fromRawJson(String str) => Content.fromJson(json.decode(str));

    factory Content.fromJson(Map<String, dynamic> json) => Content(
        description: json["description"],
        urbSubmitters: List<dynamic>.from(json["urbSubmitters"].map((x) => x)),
        tags: Tags.fromJson(json["tags"]),
        preparationSteps: json["preparationSteps"],
        videos: json["videos"] == null ? null : Videos.fromJson(json["videos"]),
        moreContent: MoreContent.fromJson(json["moreContent"]),
        tagsAds: TagsAds.fromJson(json["tagsAds"]),
        details: Details.fromJson(json["details"]),
        relatedContent: MoreContent.fromJson(json["relatedContent"]),
        ingredientLines: List<IngredientLine>.from(json["ingredientLines"].map((x) => IngredientLine.fromJson(x))),
        unitSystem: json["unitSystem"],
        reviews: Reviews.fromJson(json["reviews"]),
        relatedProducts: MoreContent.fromJson(json["relatedProducts"]),
        preparationStepCount: json["preparationStepCount"],
        nutrition: Nutrition.fromJson(json["nutrition"]),
        yums: Yums.fromJson(json["yums"]),
    );
}