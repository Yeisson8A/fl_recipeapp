import 'dart:convert';

import 'models.dart';

class Nutrition {
    String mobileSectionName;
    List<NutritionEstimate> nutritionEstimates;

    Nutrition({
        required this.mobileSectionName,
        required this.nutritionEstimates,
    });

    factory Nutrition.fromRawJson(String str) => Nutrition.fromJson(json.decode(str));

    factory Nutrition.fromJson(Map<String, dynamic> json) => Nutrition(
        mobileSectionName: json["mobileSectionName"],
        nutritionEstimates: List<NutritionEstimate>.from(json["nutritionEstimates"].map((x) => NutritionEstimate.fromJson(x))),
    );
}
