import 'package:flutter/material.dart';

//import 'package:hw7/button.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo,
        appBar: AppBar(
          title: const Text('Weather', style: TextStyle(color: Colors.black87)),
          centerTitle: true,
          backgroundColor: Colors.white,
          leading: IconButton(icon: Icon(Icons.menu), onPressed: () {}),
          iconTheme: IconThemeData(color: Colors.black54),
          brightness: Brightness.light,
          actions: <Widget>[
            IconButton(onPressed: () {}, icon: Icon(Icons.search)),
          ],
        ),
        body: _buildBody(),
      ),
    );
  }
}

Widget _buildBody() {
  return SingleChildScrollView(
    child: Column(children: <Widget>[
      /*_headerImage(), */ SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16),
        child: Column(children: <Widget>[
          Divider(height: 10,),
          _weatherDescription(),
          Divider(height: 50,),
          _temperature(),
          Divider(height: 50,),
          _temperatureForecast(),
          Divider(height: 50,),
          //_temperatureForecastList(),
        ]),
      )),
    ]),
  );
}

Image _headerImage() {
  return Image(
    image: NetworkImage(
        'https://img.freepik.com/premium-vector/clear-cloudy-weather-during-day-mobile-wallpaper_771942-1.jpg?w=2000'),
    fit: BoxFit.cover,
  );
}

Column _weatherDescription() {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: <Widget>[
      Text(
        'Tomskaya oblast, Tomsk',
        style: TextStyle(color: Colors.white, fontSize: 28),
      ),
      Text(
        'Friday, April 20, 2023',
        style: TextStyle(color: Colors.white, fontSize: 18),
      ),
    ],
  );
}

Row _temperature() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    children: <Widget>[
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Icon(
            Icons.wb_sunny,
            color: Colors.yellow,
            size: 50,
          ),
        ],
      ),
      SizedBox(width: 16),
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            children: <Widget>[
              Text(
                '15 °C',
                style: TextStyle(color: Colors.white, fontSize: 40),
              ),
            ],
          ),
          /*Row(
            children: <Widget>[
              Text(
                'Tomskaya oblast, Tomsk',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),*/
        ],
      )
    ],
  );
}

Wrap _temperatureForecast() {
  return Wrap(
    spacing: 10,
    children:
      List.generate(3, (int index){
        return Chip(
          label: Text(
            '${index + 20} °C',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          avatar: Icon(
            Icons.wb_cloudy,
            color: Colors.blue.shade300,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
            side: BorderSide(color: Colors.white)
          ),
          backgroundColor: Colors.indigo,
        );
      }),
  );
}

Widget _temperatureForecastList(){
  final List<String> items = List<String>.generate(5, (i) => 'Item $i');

  return ListView.builder(
    itemCount: items.length,
    itemBuilder: (context, index){
      return Card(
        child: ListTile(
          title: Text('${items[index]}'),
          leading: Icon(Icons.insert_photo, color: Colors.red,),
          trailing: Icon(Icons.keyboard_arrow_right)
        ),
      );
    }
  );
}

