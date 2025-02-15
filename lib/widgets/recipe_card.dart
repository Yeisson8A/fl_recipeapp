import 'package:flutter/material.dart';

class RecipeCard extends StatelessWidget {
  final String title;
  final String rating;
  final String cookTime;
  final String thumbnailUrl;

  const RecipeCard({super.key, required this.title, required this.rating, required this.cookTime, required this.thumbnailUrl});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 22, vertical: 10),
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.6),
            offset: const Offset(0.0, 10.0),
            blurRadius: 10.0,
            spreadRadius: -6.0,
          ),
        ],
        image: DecorationImage(
          colorFilter: ColorFilter.mode(
            Colors.black.withOpacity(0.35),
            BlendMode.multiply,
          ),
          image: NetworkImage(thumbnailUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Stack(
        children: [
          // Titulo de la receta
          RecipeTitleCard(title: title),
          Align(
            alignment: Alignment.bottomLeft,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // Rating de la receta
                RecipeRatingCard(rating: rating),
                // Tiempo de preparación de la receta
                RecipeScheduleCard(cookTime: cookTime)
              ],
            )
          ),
        ],
      ),
    );
  }
}

class RecipeScheduleCard extends StatelessWidget {
  final String cookTime;
  
  const RecipeScheduleCard({super.key, required this.cookTime});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(Icons.schedule, color: Colors.yellow, size: 18),
          const SizedBox(width: 7),
          Text(cookTime),
        ],
      ),
    );
  }
}

class RecipeRatingCard extends StatelessWidget {
  final String rating;

  const RecipeRatingCard({super.key, required this.rating});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(5),
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.black.withOpacity(0.4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        children: [
          const Icon(Icons.star, color: Colors.yellow, size: 18),
          const SizedBox(width: 7),
          Text(rating),
        ],
      ),
    );
  }
}

class RecipeTitleCard extends StatelessWidget {
  final String title;

  const RecipeTitleCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 5.0),
        child: Text(
          title,
          style: const TextStyle(fontSize: 19),
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textAlign: TextAlign.center,
        )
      )
    );
  }
}