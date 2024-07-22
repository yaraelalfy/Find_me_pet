import 'package:findanimals/core/container_shape.dart';
import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        //Spacer(),
        SizedBox(width: 50,),
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 233, 114),
              borderRadius: BorderRadius.circular(180)
            //shape: BoxShape.rectangle,
          ),
          child: Center(
            child: ClipOval(
              child: Image.asset(
                'images/dogs/download.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
/*
return CustomPaint(
      size: Size(1000, 300), // Size of the CustomPaint
      painter: CircularSectorPainter(),
    );
 */
/*
 return CustomPaint(
      size: Size(100, 100), // Size of the CustomPaint
      painter: TrianglePainter(),
    );
 */

/*
return Row(
      children: [
        Container(
          width: 300,
          height: 300,
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(180)
            //shape: BoxShape.rectangle,
          ),
          child: Center(
            child: ClipOval(
              child: Image.asset(
                'images/dogs/download.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ],
    );
 */