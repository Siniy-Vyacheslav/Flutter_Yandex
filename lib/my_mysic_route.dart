import 'package:flutter/material.dart';

import 'categoriesBlock.dart';
import 'myFavoritiesBlock.dart';
import 'myButtonNavigationBar.dart';

class MyMusicRoute extends StatefulWidget {
  const MyMusicRoute();

  @override
  _MyMusicRouteState createState() => _MyMusicRouteState();
}

class _MyMusicRouteState extends State<MyMusicRoute> {
  @override
  Widget build(BuildContext context) {
    final body = Column(
      children: <Widget>[
        Divider(
          color: Colors.transparent,
          height: 16.0,
        ),
        MyFavorites(),
        Divider(
          color: Colors.transparent,
          height: 16.0,
        ),
        CategoriesBlock(),
      ],
    );

    final appBar = _MyAppBar();

    return Scaffold(
      appBar: appBar,
      body: body,
      bottomNavigationBar: MyButtonNavigationBar(),
    );
  }
}

class _MyAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      iconTheme: IconThemeData(
        color: Colors.black,
      ),
      title: Text(
        'My music',
        style: TextStyle(
          color: Colors.black,
        ),
      ),
      backgroundColor: Colors.white,
      actions: <Widget>[
        Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            Icons.settings,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Icon(
            Icons.person_outline,
          ),
        )
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
