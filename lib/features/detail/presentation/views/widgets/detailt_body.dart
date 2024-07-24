import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:findanimals/features/home/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'About.dart';
import 'fact_detail.dart';
import 'photo.dart';

class detail_body extends StatelessWidget {
  const detail_body({super.key, required this.dogName, required this.imagePath});
  final String dogName,imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          InkWell(
            onTap: () {
              context.read<AppCubit>().choosenHeart();
              context.read<AppCubit>().isavailable();
            },
            child: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Icon(
                  Icons.favorite,
                  color: context.read<AppCubit>().heart&context.read<AppCubit>().is_available
                      ? Colors.red
                      : Color.fromARGB(129, 0, 0, 0),
                );
              },
            ),
          ),
          //Icon(Icons.shopping_cart)
        ],
      ),
      body: Column(
        children: [
          fact_detail(dogName: dogName, imagePath:imagePath,),
          Photo(imagePath: imagePath,),
          About()
        ],
      ),
    );
  }
}

