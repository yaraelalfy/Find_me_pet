import 'package:flutter/material.dart';

class Photo extends StatelessWidget {
  const Photo({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Spacer(),
        SizedBox(width: 50,),
        Container(
          width: 180,
          height: 300,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 236, 233, 114),
              borderRadius: BorderRadius.only(topLeft: Radius.circular(360),bottomLeft: Radius.circular(360))
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

/*import 'package:flutter/material.dart';

class Photo extends StatefulWidget {
  const Photo({super.key});

  @override
  _PhotoState createState() => _PhotoState();
}

class _PhotoState extends State<Photo> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _sizeAnimation;
  late Animation<double> _opacityAnimation;
  late Animation<double> _rotationAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    )..repeat(reverse: true);

    _sizeAnimation = Tween<double>(begin: 300, end: 350).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _opacityAnimation = Tween<double>(begin: 1, end: 0.5).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );

    _rotationAnimation = Tween<double>(begin: 0, end: 0.2).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 50,),
        AnimatedBuilder(
          animation: _controller,
          builder: (context, child) {
            return Transform.rotate(
              angle: _rotationAnimation.value,
              child: Container(
                width: _sizeAnimation.value,
                height: _sizeAnimation.value,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 236, 233, 114),
                  borderRadius: BorderRadius.circular(180),
                ),
                child: Center(
                  child: AnimatedOpacity(
                    opacity: _opacityAnimation.value,
                    duration: _controller.duration!,
                    child: ClipOval(
                      child: Image.asset(
                        'images/dogs/download.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      body: Center(
        child: Photo(),
      ),
    ),
  ));
}
*/

/*import 'package:flutter/material.dart';

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
}*/
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
//////////////////////////////////////////////////true/////////////////////////////////////////
/*

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

 */