import 'package:flutter/material.dart';

import 'screen/HomePage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class City {
  final int id;
  final String name;

  City(this.id, this.name);
}

class DropdownListExample extends StatefulWidget {
  @override
  _DropdownListExampleState createState() => _DropdownListExampleState();
}

class _DropdownListExampleState extends State<DropdownListExample> {
  City? _selectedCity; // Selected city object

  List<City> _cities = [
    City(1, 'New York'),
    City(2, 'Los Angeles'),
    City(3, 'Chicago'),
    City(4, 'San Francisco'),
    City(5, 'Miami'),
  ]; // List of city objects

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown List Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButton<City>(
              value: _selectedCity,
              onChanged: (City? newValue) {
                setState(() {
                  _selectedCity = newValue!;
                });
              },
              items: _cities.map((City city) {
                return DropdownMenuItem<City>(
                  value: city,
                  child: Text(city.name),
                );
              }).toList(),
            ),
            SizedBox(height: 20),
            _selectedCity != null
                ? Text(
                    'Selected City: ${_selectedCity!.name}',
                    style: TextStyle(fontSize: 20),
                  )
                : Text('No city selected.'),
          ],
        ),
      ),
    );
  }
}
