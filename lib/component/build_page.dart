import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BuildBoard extends StatefulWidget {
  const BuildBoard({Key? key}) : super(key: key);

  @override
  State<BuildBoard> createState() => _BuildBoardState();
}

class _BuildBoardState extends State<BuildBoard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(
            image: AssetImage('assets/board.jpg'),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Track your active lifestyle',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w600,
            ),
          ),
          Text(
            'Find your way to the perfect body',
            style: TextStyle(
              fontSize: 15,
            ),
          ),
        ],
      ),
    );
  }
}
