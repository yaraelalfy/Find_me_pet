import 'package:flutter/material.dart';

class fact_adopt extends StatelessWidget {
  const fact_adopt({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text("  Sparky",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
            Spacer(),
            Icon(Icons.female,size: 27,color: Colors.grey,)
          ],
        ),
        Row(
          children: [
            Text("   RetrieverGolden",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
            Spacer(),
            Text("   8 months old  ",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.black38)),
          ],
        ),
        Row(children: [
          Icon(
            Icons.location_on,
            color: Colors.red,
            size: 24,
          ),
          Text(" 2.5 kms away",style: TextStyle(color: Colors.grey)),
        ],)
      ],
    );
  }
}
