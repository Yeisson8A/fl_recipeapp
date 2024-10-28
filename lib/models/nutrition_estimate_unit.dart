import 'dart:convert';

class NutritionEstimateUnit {
    String name;
    String abbreviation;
    String plural;
    bool decimal;

    NutritionEstimateUnit({
        required this.name,
        required this.abbreviation,
        required this.plural,
        required this.decimal,
    });

    factory NutritionEstimateUnit.fromRawJson(String str) => NutritionEstimateUnit.fromJson(json.decode(str));

    factory NutritionEstimateUnit.fromJson(Map<String, dynamic> json) => NutritionEstimateUnit(
        name: json["name"],
        abbreviation: json["abbreviation"],
        plural: json["plural"],
        decimal: json["decimal"],
    );
}
