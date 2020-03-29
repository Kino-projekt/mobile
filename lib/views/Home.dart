import 'package:flutter/material.dart';
import 'package:mobile/models/Film.dart';
import 'package:mobile/components/drawers/DrawerAnonymous.dart';
import 'package:mobile/components/drawers/DrawerUser.dart';
import 'package:mobile/components/drawers/DrawerAdmin.dart';

class Home extends StatefulWidget {
  Home({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _Home createState() => _Home();
}

class _Home extends State<Home> {

  List<Film> films = [
    Film(age: 12, hour: '13:00', title: 'Inny film', img: 'https://i.pinimg.com/originals/94/e6/98/94e6987380d3b7d24e29f4b6b475d49a.jpg'),
    Film(age: 18, hour: '10:00', title: 'Inny film2', img: 'https://i.pinimg.com/originals/94/e6/98/94e6987380d3b7d24e29f4b6b475d49a.jpg'),
    Film(age: 12, hour: '2:00', title: 'Inny film3', img: 'https://i.pinimg.com/originals/94/e6/98/94e6987380d3b7d24e29f4b6b475d49a.jpg'),
    Film(age: 7, hour: '20:00', title: 'Inny film4', img: 'https://i.pinimg.com/originals/94/e6/98/94e6987380d3b7d24e29f4b6b475d49a.jpg'),
    Film(age: 7, hour: '20:00', title: 'Inny film5', img: 'https://i.pinimg.com/originals/94/e6/98/94e6987380d3b7d24e29f4b6b475d49a.jpg'),
    Film(age: 7, hour: '20:00', title: 'Inny film6', img: 'https://i.pinimg.com/originals/94/e6/98/94e6987380d3b7d24e29f4b6b475d49a.jpg'),
  ];

  Widget drawer = DrawerAnonymous();


  Widget filmTemplate(String title, String hour, String img) {
    return Card(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Image.network(img),
              title: Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              subtitle: Text(hour),
            ),
            SizedBox(height: 10.0),
            ButtonBar(
              children: <Widget>[
                FlatButton(
                  child: Text(
                    'CZYTAJ WIĘCEJ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    )
                  ),
                  onPressed: () {},
                ),
                FlatButton(
                  child: Text(
                    'ZAREZERWUJ',
                    style: TextStyle(
                      fontSize: 18.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                    ),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        )
      );
  }



  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      drawer: drawer,
      body: Center(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: films.map((film) => filmTemplate('${film.title}', '${film.hour}', '${film.img}')).toList(),
        ),
      ),
    );
  }
}
