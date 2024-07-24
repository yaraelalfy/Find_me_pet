import 'package:flutter/material.dart';

import 'widgets/detailt_body.dart';

class Details extends StatelessWidget {
  const Details({super.key, required this.dogName, required this.imagePath});
  final String dogName,imagePath;

  @override
  Widget build(BuildContext context) {
    return detail_body(dogName: dogName, imagePath: imagePath,);
  }
}
/*
BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: adopt_body(),
      ),
    );
 */