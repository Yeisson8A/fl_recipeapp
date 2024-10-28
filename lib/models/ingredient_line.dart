import 'dart:convert';

import 'models.dart';

class IngredientLine {
    String category;
    Amount amount;
    String unit;
    String ingredientId;
    String categoryId;
    List<RelatedRecipeSearchTerm> relatedRecipeSearchTerm;
    String ingredient;
    String id;
    String? remainder;
    double? quantity;
    String wholeLine;

    IngredientLine({
        required this.category,
        required this.amount,
        required this.unit,
        required this.ingredientId,
        required this.categoryId,
        required this.relatedRecipeSearchTerm,
        required this.ingredient,
        required this.id,
        required this.remainder,
        required this.quantity,
        required this.wholeLine,
    });

    factory IngredientLine.fromRawJson(String str) => IngredientLine.fromJson(json.decode(str));

    factory IngredientLine.fromJson(Map<String, dynamic> json) => IngredientLine(
        category: json["category"],
        amount: Amount.fromJson(json["amount"]),
        unit: json["unit"],
        ingredientId: json["ingredientId"],
        categoryId: json["categoryId"],
        relatedRecipeSearchTerm: List<RelatedRecipeSearchTerm>.from(json["relatedRecipeSearchTerm"].map((x) => RelatedRecipeSearchTerm.fromJson(x))),
        ingredient: json["ingredient"],
        id: json["id"],
        remainder: json["remainder"],
        quantity: json["quantity"]?.toDouble(),
        wholeLine: json["wholeLine"],
    );
}