import 'package:flutter/material.dart';

class ShowRoute extends StatefulWidget {
  final String name;

  ShowRoute({
    @required this.name,
  }) : assert(name != null);

  _ShowRouteState createState() => _ShowRouteState();
}

class _ShowRouteState extends State<ShowRoute> {

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        widget.name,
        style: Theme.of(context).textTheme.display1,
      ),
    );
  }
}
