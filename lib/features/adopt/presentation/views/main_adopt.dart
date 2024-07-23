import 'package:findanimals/features/adopt/presentation/views/widgets/adopt_body.dart';
import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


class Adopt extends StatelessWidget {
  const Adopt({super.key, required this.dogName});
  final String dogName;

  @override
  Widget build(BuildContext context) {
    return adopt_body(dogName: dogName,);
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