import 'package:flutter/material.dart';
import 'package:fooderlich/fooderlich_theme.dart';

class Card2 extends StatelessWidget {
  const Card2({super.key});

  //1
  final String name = 'Mclaren';
  final String title = 'GT Speedmark';
  final String description = 'The fastest car.';
  final String car = 'Car';

  //2
  @override
  Widget build(BuildContext context) {
    //3
    return Center(
      child: Container(
      padding: const EdgeInsets.all(16),
      constraints: const BoxConstraints.expand(width: 350, height: 450),
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/01_14.jpg'),
          fit: BoxFit.cover,
        ),
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      radius: 20,
                      backgroundColor: Colors.white,
                      child: CircleAvatar(
                        radius: 18,
                        backgroundImage: AssetImage('assets/images/mclaren.png'
                      ),
                    )
                    ),
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 20,
            child: Text(title, style: FooderlichTheme.lightTextTheme.titleLarge),
          ),
          Positioned(
            bottom: 80,
            left: 0,
            child: RotatedBox(
              quarterTurns: 3,
              child: Text(description, style: FooderlichTheme.darkTextTheme.displaySmall),
            ),
          ),
          Positioned(
            bottom: 10,
            right: 0,
            child: Text(car, style: FooderlichTheme.darkTextTheme.displayLarge),
          )
        ],
      ),
    ));
  }
}