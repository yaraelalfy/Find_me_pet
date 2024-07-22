/*import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:findanimals/features/home/presentation/manager/state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class app_bar_adopt extends StatelessWidget {
  const app_bar_adopt({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
        actions: [
          InkWell(
            onTap: () {
              context.read<AppCubit>().choosenHeart();
            },
            child: BlocBuilder<AppCubit, AppState>(
              builder: (context, state) {
                return Icon(
                  Icons.favorite,
                  color: context.read<AppCubit>().heart
                      ? Colors.orange
                      : Color.fromARGB(129, 0, 0, 0),
                );
              },
            ),
          ),
        ],
      )
    ;
  }
}
*/