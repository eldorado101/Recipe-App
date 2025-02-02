import 'dart:convert';
import 'package:http/http.dart' as http;
import '../models/recipe.dart';

class RecipeService {
  Future<List<Recipe>> fetchRecipes() async {
    final response = await http.get(Uri.parse('https://api.spoonacular.com/recipes/random?apiKey=YOUR_API_KEY&number=10'));

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final recipes = List<Map<String, dynamic>>.from(data['recipes']);
      return recipes.map((json) => Recipe.fromJson(json)).toList();
    } else {
      throw Exception('Failed to load recipes');
    }
  }
}