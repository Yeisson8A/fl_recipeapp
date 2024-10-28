import 'dart:convert';

import 'models.dart';

class NutritionEstimate {
    String attribute;
    double value;
    NutritionEstimateUnit unit;
    NutritionEstimateDisplay display;

    NutritionEstimate({
        required this.attribute,
        required this.value,
        required this.unit,
        required this.display,
    });

    factory NutritionEstimate.fromRawJson(String str) => NutritionEstimate.fromJson(json.decode(str));

    factory NutritionEstimate.fromJson(Map<String, dynamic> json) => NutritionEstimate(
        attribute: json["attribute"],
        value: json["value"]?.toDouble(),
        unit: NutritionEstimateUnit.fromJson(json["unit"]),
        display: NutritionEstimateDisplay.fromJson(json["display"]),
    );
}
