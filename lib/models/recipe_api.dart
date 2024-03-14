
import 'package:flutter_application_7/controller/exceptions/api_request.dart';
import 'package:http/http.dart';
import 'recipe_model.dart';



class RecipeApi {
  static final _client = Client();

  static Future<List<Recipe>> getRecipe() async {
    final url = Uri.parse('https://dummyjson.com/recipes?limit=0');

    try {
      Response response = await _client.get(url);
      if (response.statusCode == 200) {
        return recipeFromJson(response.body);
      } else {
        throw ApiRequestFailedExeption(statusCode: response.statusCode);
      }
    } catch (e) {
      rethrow;
    }
  }
}


