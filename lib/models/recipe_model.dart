import 'dart:convert';

class Recipe {
  final String name;
  final String image;
  final num rating;
  final List instructions;

  Recipe({
    required this.name,
    required this.image,
    required this.rating,
    required this.instructions
  });

  factory Recipe.fromJson(Map<String, dynamic> json) {
    return Recipe(
      name: json['name'] ?? '',
      image: json['image'],
      rating: json['rating'],
      instructions: (json['instructions'] as List).map((e) => e as String).toList(),
    );
  }
}

List<Recipe> recipeFromJson(String jsonResponse) {
  final recipeList = (jsonDecode(jsonResponse)['recipes']) as List<dynamic>;
  return recipeList.map((recipe) => Recipe.fromJson(recipe)).toList();
}



  // factory ProductModel.fromJson(Map<String, dynamic> risan) {
  //   return ProductModel(
  //     id: risan['id'],
  //     title: risan['title'],
  //     description: risan['description'],
  //     price: risan['price'],
  //     discountPercentage: risan['discountPercentage'].toDouble(),
  //     rating: risan['rating'].toDouble(),
  //     stock: risan['stock'],
  //     brand: risan['brand'],
  //     category: risan['category'],
  //     thumbnail: risan['thumbnail'],
  //     images: (risan['images'] as List).map((e) => e as String).toList(),
  //   );
  // }