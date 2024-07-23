import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text("About",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30),),
        SizedBox(height: 10,),
        Text("She is shy at first, but will warm up when she's comfortable. She is not a ranch dog that guards animals and property as she would rather be with her people; but she is comfortable around animals. She plays well with other dogs."
          ,style: TextStyle(color: Colors.black45,fontWeight: FontWeight.w300,fontSize: 15),),
        SizedBox(height: 49,),
        Row(
          children: [
            Spacer(),
            Container(
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
          ],
        )
      ],
    );
  }
}
