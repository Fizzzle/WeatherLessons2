import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 188, 54, 45),
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 188, 54, 45),
          title: Text(
            'Weather Forecast',
            style: TextStyle(fontSize: 25),
          ),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              _textField(),
              _cityDetail(),
              _temperatureDetail(),
              SizedBox(height: 30),
              _extraWeatherDetail(),
              SizedBox(height: 50),
              Text(
                '7-DAY WEATHER FORECAST',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              SizedBox(height: 40),
              Expanded(child: _bottomdetails()),
            ],
          ),
        ),
      ),
    );
  }
}

Row _textField() {
  return Row(
    children: [
      Padding(
        padding: const EdgeInsets.only(top: 3.0),
        child: Icon(
          Icons.search,
          size: 28,
          color: Colors.white,
        ),
      ),
      SizedBox(width: 10),
      Text('Enter City Name',
          style: TextStyle(fontSize: 20, color: Colors.white)),
    ],
  );
}

ListTile _cityDetail() {
  return ListTile(
    title: Text(
      'Odeskaya oblast, UA',
      style: TextStyle(fontSize: 28, color: Colors.white),
    ),
    subtitle: Text('Friday, aug 19, 2020',
        style: TextStyle(fontSize: 18, color: Colors.white)),
  );
}

ListTile _temperatureDetail() {
  return ListTile(
    title: Text(
      '14 F',
      style: TextStyle(
        fontSize: 55,
        color: Colors.white,
      ),
    ),
    subtitle: Text(
      'LIGHT SNOW',
      style: TextStyle(fontSize: 18, color: Colors.white),
    ),
    leading: Icon(
      Icons.wb_sunny,
      size: 65,
      color: Colors.white,
    ),
  );
}

Row _extraWeatherDetail() {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
      Column(
        children: [
          Icon(Icons.snowing, size: 50, color: Colors.white),
          Text('5', style: TextStyle(fontSize: 24, color: Colors.white)),
          Text('km/hr', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
      Column(
        children: [
          Icon(Icons.snowing, size: 50, color: Colors.white),
          Text('3', style: TextStyle(fontSize: 24, color: Colors.white)),
          Text('%', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
      Column(
        children: [
          Icon(Icons.snowing, size: 50, color: Colors.white),
          Text('20', style: TextStyle(fontSize: 24, color: Colors.white)),
          Text('%', style: TextStyle(fontSize: 24, color: Colors.white)),
        ],
      ),
    ],
  );
}

Widget _bottomdetails() {
  return ListView(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemExtent: 120,
    children: [
      Column(
        children: [
          Text('Friday', style: TextStyle(fontSize: 30, color: Colors.white)),
          SizedBox(height: 10),
          Row(
            children: [
              Text('6 F', style: TextStyle(fontSize: 40, color: Colors.white)),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 45,
              )
            ],
          ),
        ],
      ),
      Column(
        children: [
          Text('Saturday', style: TextStyle(fontSize: 30, color: Colors.white)),
          SizedBox(height: 10),
          Row(
            children: [
              Text('5 F', style: TextStyle(fontSize: 40, color: Colors.white)),
              SizedBox(
                width: 20,
              ),
              Icon(
                Icons.wb_sunny,
                color: Colors.white,
                size: 45,
              )
            ],
          ),
        ],
      ),
    ],
  );
}
