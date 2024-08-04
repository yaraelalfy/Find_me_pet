import 'package:findanimals/core/styles.dart';
import 'package:findanimals/features/detail/presentation/views/widgets/alert.dart';
import 'package:findanimals/features/home/presentation/manager/cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("About",style:Fonts.first,),
          SizedBox(height: 10,),
          Text("She is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs."
            ,style:Fonts.third,),
          SizedBox(height: 79,),
          //Spacer(),
          Row(
            children: [
              Spacer(),
              InkWell(
                onTap: () //{context.read<AppCubit>().is_added();},
                {
                  added(context);
                },
                child: Container(
                  width: 170,
                  height: 65,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 213, 81, 23),
                      borderRadius: BorderRadius.only(topLeft: Radius.circular(20),)
                  ),
                  child: Row(
                    children: [
                      SizedBox(width: 30,),
                      Icon(Icons.pets,size: 20,color: Colors.white,),
                      Text("  ADOPT",style: TextStyle(fontSize: 20,color: Colors.white),)
                    ],
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
