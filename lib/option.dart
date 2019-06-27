import 'package:flutter/material.dart';

class Option {
  final String name;

  const Option({
    @required this.name,
  })
      :assert(name != null);

  Option.fromJson(Map jsonMap)
      : assert(jsonMap['name'] != null),
        name = jsonMap['name'];
}