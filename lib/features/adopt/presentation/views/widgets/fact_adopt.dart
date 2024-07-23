import 'package:findanimals/core/styles.dart';
import 'package:flutter/material.dart';

class fact_adopt extends StatelessWidget {
  const fact_adopt({super.key, required this.dogName});
  final String dogName;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 8),
      child: Column(
        children: [
          Row(
            children: [
             // Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
              Text("$dogName",style: Fonts.first,),
              Spacer(),
              Icon(Icons.female,size: 27,color: Colors.grey,)
            ],
          ),
          Row(
            children: [
              Text("RetrieverGolden",style: Fonts.second),
              Spacer(),
              Text("8 months old  ",style: Fonts.second),
            ],
          ),
          Row(children: [
            Icon(
              Icons.location_on,
              color: Colors.red,
              size: 24,
            ),
            Text(" 2.5 kms away",style:Fonts.third),
          ],)
        ],
      ),
    );
  }
}
