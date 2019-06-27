import 'package:flutter/material.dart';

class MyFavorites extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
        shadows: [
          BoxShadow(
            color: Colors.grey,
            blurRadius: 0.5,
            spreadRadius: 0.0,
            offset: Offset(0.1, 0.9),
          ),
        ],
        color: Colors.white,
        shape: Border(
          top: BorderSide(
            color: Colors.grey,
            width: 0.0,
          ),
          bottom: BorderSide(
            color: Colors.grey,
            width: 0.0,
          ),
        ),
      ),
      child: Stack(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Image(
              image: AssetImage(
                'assets/favorities.png',
              ),
              width: 90,
              height: 90,
            ),
          ),
          Align(
            alignment: Alignment(0.18, -5),
            heightFactor: 0.1,
            widthFactor: 3.2,
            child: Text(
              'My favorites',
              style: TextStyle(
                fontSize: 17,
              ),
            ),
          ),
          Align(
            alignment: Alignment(-0.25, -8.2),
            heightFactor: 0.1,
            child: Text(
              '699 tracks',
              style: TextStyle(
                fontSize: 15,
              ),
            ),
          ),
          Align(
            alignment: Alignment(0.26, -8.2),
            heightFactor: 0.1,
            child: Text(
              '-- 48.5 hours',
              style: TextStyle(
                fontSize: 15,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }
}