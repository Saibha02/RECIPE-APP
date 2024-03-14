import 'package:flutter/material.dart';
import 'package:flutter_application_7/models/recipe_model.dart';

class ProductListingPage extends StatelessWidget {
  final Recipe recipename;
  const ProductListingPage({super.key, required this.recipename});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(recipename.name),
          backgroundColor: Colors.grey,
        ),
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 400,
                width: 400,
                child: Image.network(recipename.image),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  recipename.rating.toString(),
                ),
              ),
              Text(recipename.instructions.toString())
            ],
          ),
        ));
  }
}
