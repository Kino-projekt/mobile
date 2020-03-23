import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Text('SCUTER',
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                )),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text(
                'Główna',
                style: TextStyle(
                  fontSize: 30.0
                  ),
                ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text(
                'Logowanie',
                style: TextStyle(
                  fontSize: 20.0
                  ),
                ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title: Text(
                'Rejestracja',
                style: TextStyle(
                  fontSize: 20.0
                  ),
                ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[ 
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
            
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
            
            
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
            
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
            
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
            
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
            
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: <Widget>[
                  ListTile(
                    leading: Image.network('https://static.wirtualnemedia.pl/media/top/star-wars-odrodzenie-655.jpg'),
                    title: Text('Tytuł filmu'),
                    subtitle: Text('Najbliższy seans: 18:00'),
                    trailing: FlatButton(
                      onPressed: (){},
                      child: Icon(Icons.arrow_drop_down),
                    ),
                  ),
                ],
              )
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
