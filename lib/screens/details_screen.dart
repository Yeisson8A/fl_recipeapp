import 'package:fl_recipeapp/providers/recipes_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
import '../theme/app_theme.dart';
import 'package:webview_flutter/webview_flutter.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Feed recipe = ModalRoute.of(context)!.settings.arguments as Feed;
    // Obtener instancia al servicio
    final recipesProvider = Provider.of<RecipesProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.content.details.name),
      ),
      body: Column(
        children: [
          _RecipeImage(recipe: recipe),
          Container(
            width: double.infinity,
            height: 100,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                    height: 50,
                    width: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: recipesProvider.selectedCategory == 'Ingredients'
                            ? AppTheme.primary
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: OutlinedButton(
                      onPressed: () {
                        recipesProvider.selectedCategory = 'Ingredients';
                      },
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              width: 1,
                              color: recipesProvider.selectedCategory ==
                                      'Ingredients'
                                  ? AppTheme.primary
                                  : Colors.grey)),
                      child: const Text("Ingredients",
                          style: TextStyle(color: Colors.white)),
                    )),
                Container(
                    height: 50,
                    width: 130,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        color: recipesProvider.selectedCategory == 'Preparation'
                            ? AppTheme.primary
                            : Colors.grey,
                        borderRadius: BorderRadius.circular(12)),
                    child: OutlinedButton(
                      onPressed: () {
                        recipesProvider.selectedCategory = 'Preparation';
                      },
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(
                              width: 1,
                              color: recipesProvider.selectedCategory ==
                                      'Preparation'
                                  ? AppTheme.primary
                                  : Colors.grey)),
                      child: const Text("Preparation",
                          style: TextStyle(color: Colors.white)),
                    )),
                if (recipe.content.videos != null)
                  Container(
                      height: 50,
                      width: 100,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                          color: recipesProvider.selectedCategory == 'Video'
                              ? AppTheme.primary
                              : Colors.grey,
                          borderRadius: BorderRadius.circular(12)),
                      child: OutlinedButton(
                        onPressed: () {
                          recipesProvider.selectedCategory = 'Video';
                        },
                        style: OutlinedButton.styleFrom(
                            side: BorderSide(
                                width: 1,
                                color:
                                    recipesProvider.selectedCategory == 'Video'
                                        ? AppTheme.primary
                                        : Colors.grey)),
                        child: const Text("Video",
                            style: TextStyle(color: Colors.white)),
                      ))
              ],
            ),
          ),
          if (recipesProvider.selectedCategory == 'Ingredients')
            _RecipeIngredients(recipe: recipe)
          else if (recipesProvider.selectedCategory == 'Preparation')
            _RecipePreparationSteps(recipe: recipe)
          else
            _RecipeVideo(recipe: recipe, recipesProvider: recipesProvider)
        ],
      ),
    );
  }
}

class _RecipeVideo extends StatelessWidget {
  final Feed recipe;
  final RecipesProvider recipesProvider;

  const _RecipeVideo(
      {super.key, required this.recipe, required this.recipesProvider});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 300,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: FutureBuilder(
          future: recipesProvider.getRecipeUrl(recipe),
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

            return WebView(
              debuggingEnabled: false,
              backgroundColor: Colors.transparent,
              javascriptMode: JavascriptMode.unrestricted,
              initialUrl: snapshot.data
            );
          },
        ));
  }
}

class _RecipePreparationSteps extends StatelessWidget {
  const _RecipePreparationSteps({super.key, required this.recipe});

  final Feed recipe;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: recipe.content.preparationSteps.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(recipe.content.preparationSteps[index]),
            );
          },
        ),
      ),
    );
  }
}

class _RecipeIngredients extends StatelessWidget {
  const _RecipeIngredients({super.key, required this.recipe});

  final Feed recipe;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
        child: ListView.separated(
          separatorBuilder: (_, __) => const Divider(),
          itemCount: recipe.content.ingredientLines.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(recipe.content.ingredientLines[index].wholeLine),
            );
          },
        ),
      ),
    );
  }
}

class _RecipeImage extends StatelessWidget {
  const _RecipeImage({super.key, required this.recipe});

  final Feed recipe;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: FadeInImage(
            placeholder: const AssetImage('assets/loading.gif'),
            image:
                NetworkImage(recipe.content.details.images[0].hostedLargeUrl),
            fit: BoxFit.cover,
            width: double.infinity,
            height: 200),
      ),
    );
  }
}
