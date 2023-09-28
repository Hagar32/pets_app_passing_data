import 'package:flutter/material.dart';

import 'package:pets1_app/data/datasource/data_source.dart';
import 'package:pets1_app/data/models/pet.dart';
import 'package:pets1_app/presentation/widgets/confirm_adaption_dialog.dart';



class PetInfoPage extends StatelessWidget {
  const PetInfoPage({Key? key, required this.pet}) : super(key: key);
  final Pet pet;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'ID # ${pet.id} ${pet.name}',
          style: const TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius:
              const BorderRadius.vertical(bottom: Radius.circular(30)),
              child: Image.network(pet.imageUrl,
                  height: 350,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'ID: ${pet.id}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                  Text(
                    'Name: ${pet.name}',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.deepPurple),
                  ),
                  const SizedBox(height: 8),
                  const Text(
                    advice,
                    style: TextStyle(fontSize: 16),
                  ),
                ],
              ),
            ),
            FractionallySizedBox(
                widthFactor: 1,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                      onPressed: () => showDialog(
                          context: context,
                          builder: (context) =>
                              ConfirmAdoptionDialog(name: pet.name)),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.deepPurple),
                      child: const Text(
                        'ADOPT',
                        style: TextStyle(color: Colors.white),
                      )),
                ))
          ],
        ),
      ),
    );
  }
}
