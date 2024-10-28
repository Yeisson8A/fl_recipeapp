import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import '../models/models.dart';

class RecipesProvider extends ChangeNotifier {
  final String _baseUrl = 'yummly2.p.rapidapi.com';
  final String _apiKey = 'xxxxx';
  String _selectedCategory = '';

  RecipesProvider() {
    initializeCategory();
  }

  String get selectedCategory => _selectedCategory;

  set selectedCategory(String valor) {
    _selectedCategory = valor;
    notifyListeners();
  }

  initializeCategory() {
    _selectedCategory = 'Ingredients';
  }

  Future<List<Feed>> getRecipes() async {
    final url = Uri.https(_baseUrl, '/feeds/list', {
      "limit": "18", 
      "start": "0", 
      "tag": "list.recipe.popular"
    });

    final response = await http.get(url, headers: {
      "x-rapidapi-key": _apiKey,
      "x-rapidapi-host": "yummly2.p.rapidapi.com",
      "useQueryString": "true"
    });
    final recipeResponse = RecipeResponse.fromRawJson(response.body);
    return recipeResponse.feed;
  }

  Future<String> getRecipeUrl(Feed recipe) async {
    await Future.delayed(Duration(seconds: 1));
    return recipe.content.videos!.originalVideoUrl;
  }
}