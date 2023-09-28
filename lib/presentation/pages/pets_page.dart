

import 'package:flutter/material.dart';

import 'package:pets1_app/data/datasource/data_source.dart';
import 'package:pets1_app/presentation/pages/form_page.dart';
import 'package:pets1_app/presentation/widgets/pet_grid_tile.dart';

class PetsPage extends StatelessWidget {
  const PetsPage(
      {Key? key, required this.formData,
        })
      : super(key: key);
  final FormData formData;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'Welcome, ${formData.name}',
            style: const TextStyle(color: Colors.white),
          ),
        ),
        body: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2),
            itemCount: pets.length,
            itemBuilder: (context, i) => PetGridTile(pet: pets[i])));
  }
}
