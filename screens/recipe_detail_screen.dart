import 'package:flutter/material.dart';
import '../models/recipe.dart';

class RecipeDetailScreen extends StatelessWidget {
  final Recipe recipe;

  RecipeDetailScreen({required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.network(recipe.imageUrl),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(recipe.instructions),
            ),
          ],
        ),
      ),
    );
  }
}