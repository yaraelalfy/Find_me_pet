import 'package:findanimals/features/home/data/images.dart';
import 'package:findanimals/features/home/data/name.dart';
import 'package:findanimals/features/home/presentation/views/widgets/animalCard.dart';
import 'package:flutter/material.dart';

class AnimalListView extends StatelessWidget {
  AnimalListView({super.key});


  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: animals.length,
      itemBuilder: (context, index) {
        return AnimalCard(imagePath: animals[index], dogName: names[index],);
      },
    );
  }
}
