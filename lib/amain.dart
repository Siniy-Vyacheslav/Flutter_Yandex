import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Yandex',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _MyAppBar(),
      body: _MyAppBody(),
      bottomNavigationBar: _MyButtonNavigationBar(),
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


class _MyAppBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(246, 245, 241, 0.8),
      child: ListView(
        children: <Widget>[
          Divider(
            color: Colors.transparent,
            height: 16.0,
          ),
          _MyFavorites(),
          Divider(
            color: Colors.transparent,
            height: 16.0,
          ),
          _MyTabs(),
        ],
      ),
    );
  }
}

class _MyButtonNavigationBar extends StatefulWidget {
  @override
  State createState() => _MyButtonNavigationBarState();
}

class _MyButtonNavigationBarState extends State<_MyButtonNavigationBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.music_note),
          title: Text('Main'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.feedback),
          title: Text('Feed'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.track_changes),
          title: Text('Radio'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.library_music),
          title: Text('My music'),
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.search),
          title: Text('Search'),
        ),
      ],
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.orange,
      currentIndex: _selectedIndex,
      onTap: _onItemTapped,
    );
  }
}

class _MyFavorites extends StatelessWidget {
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

class _MyTabs extends StatelessWidget {
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
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          MyItem(
            Icons.music_note,
            "Playlists",
          ),
          MyItem(
            Icons.audiotrack,
            "Tracks",
          ),
          MyItem(
            Icons.disc_full,
            "Albums",
          ),
          MyItem(
            Icons.face,
            "Artists",
          ),
          MyItem(
            Icons.file_download,
            "Downloaded tracks",
          ),
          MyItem(
            Icons.folder_open,
            "Tracks on your device",
          ),
        ],
      ),
    );
  }
}

class MyItem extends StatelessWidget {
  final IconData _icon;
  final String _text;

  MyItem(this._icon, this._text);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {},
      child: Row(
        children: <Widget>[
          Padding(
            padding:
                const EdgeInsets.only(bottom: 13, left: 10, top: 13, right: 25),
            child: Icon(
              _icon,
              size: 30,
            ),
          ),
          Text(
            _text,
            style: TextStyle(fontSize: 18),
          )
        ],
      ),
    );
  }
}
