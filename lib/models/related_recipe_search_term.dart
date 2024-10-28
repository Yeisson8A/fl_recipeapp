import 'dart:convert';

class RelatedRecipeSearchTerm {
    String allowedIngredient;

    RelatedRecipeSearchTerm({
        required this.allowedIngredient,
    });

    factory RelatedRecipeSearchTerm.fromRawJson(String str) => RelatedRecipeSearchTerm.fromJson(json.decode(str));

    factory RelatedRecipeSearchTerm.fromJson(Map<String, dynamic> json) => RelatedRecipeSearchTerm(
        allowedIngredient: json["allowedIngredient"],
    );
}