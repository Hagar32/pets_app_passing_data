import 'package:flutter/material.dart';

import 'package:pets1_app/data/models/pet.dart';
import 'package:pets1_app/presentation/pages/pet_info_page.dart';

class PetGridTile extends StatelessWidget {
  const PetGridTile({Key? key, required this.pet}) : super(key: key);
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => PetInfoPage(pet: pet))),
      child: SizedBox(
        height: 200,
        width: 200,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: GridTile(
                footer: Container(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  color: Colors.deepPurple.withOpacity(.7),
                  alignment: Alignment.center,
                  child: Text(
                    pet.name,
                    style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
                child: Image.network(pet.imageUrl,
                    fit: BoxFit.cover, width: 200, height: 200)),
          ),
        ),
      ),
    );
  }
}
