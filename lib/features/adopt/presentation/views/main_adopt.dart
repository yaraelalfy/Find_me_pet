import 'package:findanimals/features/adopt/presentation/views/widgets/adopt_body.dart';
import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(Adopt());
}

class Adopt extends StatelessWidget {
  const Adopt({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: MaterialApp(
        home: adopt_body(),
      ),
    );
  }
}
