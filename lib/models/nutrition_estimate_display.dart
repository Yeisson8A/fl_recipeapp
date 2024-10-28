import 'dart:convert';

class NutritionEstimateDisplay {
    dynamic value;
    String? unit;
    dynamic percentDailyValue;

    NutritionEstimateDisplay({
        required this.value,
        required this.unit,
        required this.percentDailyValue,
    });

    factory NutritionEstimateDisplay.fromRawJson(String str) => NutritionEstimateDisplay.fromJson(json.decode(str));

    factory NutritionEstimateDisplay.fromJson(Map<String, dynamic> json) => NutritionEstimateDisplay(
        value: json["value"],
        unit: json["unit"],
        percentDailyValue: json["percentDailyValue"],
    );
}
