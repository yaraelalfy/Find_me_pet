import 'package:findanimals/core/models/age.dart';
import 'package:findanimals/core/models/imageList.dart';
import 'package:findanimals/core/models/names.dart';
import 'package:findanimals/core/models/type.dart';
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
        return AnimalCard(
          imagePath: animals[index],
          dogName: names[index],
          dogType: type[index],
          dogAge: age[index],
          choosen: false,
        );
      },
    );
  }
}
