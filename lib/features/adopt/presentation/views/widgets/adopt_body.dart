import 'package:findanimals/features/adopt/presentation/views/widgets/About.dart';
import 'package:findanimals/features/adopt/presentation/views/widgets/fact_adopt.dart';
import 'package:findanimals/features/adopt/presentation/views/widgets/photo.dart';
import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:findanimals/features/home/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class adopt_body extends StatelessWidget {
  const adopt_body({super.key, required this.dogName});
  final String dogName;

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
        ],
      ),
      body: Column(
        children: [
          fact_adopt(dogName: dogName,),
          Photo(),
          About()
        ],
      ),
    );
  }
}

