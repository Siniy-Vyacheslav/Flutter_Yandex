import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

class Category extends StatelessWidget {
  final String name;
  final ColorSwatch color;
  final IconData iconLocation;

  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Container(
        child: InkWell(
          highlightColor: color,
          splashColor: color,
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(
                    bottom: 13, left: 10, top: 13, right: 25),
                child: Icon(
                  iconLocation,
                  size: 30,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: Text(
                  name,
                  style: TextStyle(fontSize: 18),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

