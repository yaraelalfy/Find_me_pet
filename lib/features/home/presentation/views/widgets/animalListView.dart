import 'package:findanimals/core/apiService.dart';
import 'package:findanimals/core/models/age.dart';
import 'package:findanimals/core/models/dog_model.dart';
import 'package:findanimals/core/models/imageList.dart';
import 'package:findanimals/core/models/names.dart';
import 'package:findanimals/core/models/type.dart';
import 'package:findanimals/features/home/presentation/views/widgets/loading.dart';
import 'package:flutter/material.dart';
import 'animalCard.dart';

class AnimalListView extends StatefulWidget {
  AnimalListView({Key? key}) : super(key: key);

  @override
  _AnimalListViewState createState() => _AnimalListViewState();
}

class _AnimalListViewState extends State<AnimalListView> {
  List<DogModel> dogs = [];

  @override
  void initState() {
    super.initState();
    _fetchDogs();
  }

  Future<void> _fetchDogs() async {
    final dogApiService = DogApiService();
    List<DogModel> dog = await dogApiService.fetchDogs('dog');
    setState(() {
      dogs = dog;
    });
  }

  @override
  Widget build(BuildContext context) {
    return dogs.isEmpty
        ? LoadingPage()
        : ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount:13,
      itemBuilder: (context, index) {
        return AnimalCard(
          imagePath:animals[index],
          dogName: names[index],
          dogType: dogs[index].name,
          dogAge: age[index],
          choosen: false,
        );
      },
    );
  }
}


/*import 'package:findanimals/core/models/age.dart';
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

*/

