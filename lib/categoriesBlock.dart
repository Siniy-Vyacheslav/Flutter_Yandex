import 'package:flutter/material.dart';

import 'category.dart';

class CategoriesBlock extends StatelessWidget {
  final _categories = <Category>[];

  static const _categoryNames = <String>[
    'Playlist',
    'Tracks',
    'Albums',
    'Artists',
    'Downloaded tracks',
    'Tracks on your device'
  ];

  static const color = Colors.amberAccent;

  static const _icons = <IconData>[
    Icons.music_note,
    Icons.audiotrack,
    Icons.disc_full,
    Icons.face,
    Icons.file_download,
    Icons.folder_open
  ];

  @override
  Widget build(BuildContext context) {
    for (var i = 0; i < _categoryNames.length; i++) {
      _categories.add(
        Category(
          name: _categoryNames[i],
          color: color,
          iconLocation: _icons[i],
        ),
      );
    }

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
//      height: 500,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          _categories[0],
          _categories[1],
          _categories[2],
          _categories[3],
          _categories[4],
          _categories[5],
        ],
      ),
    );
  }


}