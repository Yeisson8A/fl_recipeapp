import 'package:fl_recipeapp/providers/recipes_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Obtener instancia al servicio
    final recipesProvider = Provider.of<RecipesProvider>(context);

    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.restaurant_menu, color: Colors.white),
              SizedBox(width: 10),
              Text('Food Recipes'),
            ],
          ),
        ),
        body: FutureBuilder(
          future: recipesProvider.getRecipes(),
          builder: (context, snapshot) {
            if (!snapshot.hasData) {
              return const Center(
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                    SizedBox(
                        height: 60,
                        width: 60,
                        child: Center(child: CircularProgressIndicator()))
                  ]));
            }
            // Obtener datos del future
            final List<Feed> recipes = snapshot.data!;

            return ListView.builder(
              itemCount: recipes.length,
              itemBuilder: (context, index) {
                return GestureDetector(
                  onTap: () {
                    recipesProvider.initializeCategory();
                    Navigator.pushNamed(context, 'details', arguments: recipes[index]);
                  },
                  child: RecipeCard(
                      title: recipes[index].content.details.name,
                      cookTime: recipes[index].content.details.totalTime,
                      rating: recipes[index].content.details.rating.toString(),
                      thumbnailUrl: recipes[index].content.details.images[0].hostedLargeUrl),
                );
              },
            );
          },
        ));
  }
}
