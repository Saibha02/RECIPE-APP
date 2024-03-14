import 'package:flutter/material.dart';
import 'package:flutter_application_7/models/recipe_api.dart';

import 'package:flutter_application_7/view/widgets/recipecard.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Food Recipe '),
              SizedBox(
                height: 10,
              ),
              Icon(Icons.restaurant_menu),
            ],
          ),
        ),
       body: FutureBuilder(
          future: RecipeApi.getRecipe(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              return ListView.builder(
                itemCount: snapshot.data!.length,
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                itemBuilder: (context, index) => RecipeCard(
                  recipees: snapshot.data![index],
                ),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("${snapshot.error}${snapshot.stackTrace}"),
              );
            } else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }),);
  }
}
