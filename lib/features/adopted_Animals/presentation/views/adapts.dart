import 'package:flutter/material.dart';

import 'widgets/adapts.dart';

class Adapts extends StatelessWidget {
  const Adapts(
      {super.key,
      required this.image,
      required this.choosen,
      required this.name,
      required this.type,
      required this.age});
  final List image;
  final List name;
  final List type;
  final List age;
  final bool choosen;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange[100],
      appBar: AppBar(
        backgroundColor: Colors.orange[100],
        title: Text(
          "Your Adapt Menu",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: GridView.builder(
        itemCount: image.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemBuilder: (context, index) {
          return AdaptsBody(name: name[index], image: image[index]);
        },
      ),
    );
  }
}
