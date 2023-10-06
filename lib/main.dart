import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Size Selector',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Map<String, Color> buttonColors = {
    'S': Colors.blue,
    'M': Colors.green,
    'L': Colors.red,
    'XL': Colors.purple,
    'XXL': Colors.orange,
    'XXXL': Colors.teal,
  };

  String selectedSize = '';

  void _showSnackbar(String size) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text('Selected Size: $size'),
        duration: Duration(seconds: 2),
      ),
    );
  }

  void _changeColorAndSize(String size) {
    setState(() {
      // Reset the color of the previously selected button
      if (selectedSize.isNotEmpty) {
        buttonColors[selectedSize] = getDefaultButtonColor(selectedSize);
      }

      // Change the color of the selected button
      buttonColors[size] = getSelectedButtonColor(size);
      selectedSize = size;

      // Show Snackbar
      _showSnackbar(size);
    });
  }

  Color getDefaultButtonColor(String size) {

    switch (size) {
      case 'S':
        return Colors.blue;
      case 'M':
        return Colors.blue;
      case 'L':
        return Colors.blue;
      case 'XL':
        return Colors.blue;
      case 'XXL':
        return Colors.blue;
      case 'XXXL':
        return Colors.blue;
      default:
        return Colors.blue;
    }
  }

  Color getSelectedButtonColor(String size) {

    switch (size) {
      case 'S':
        return Colors.yellow;
      case 'M':
        return Colors.lightGreen;
      case 'L':
        return Colors.pink;
      case 'XL':
        return Colors.deepPurple;
      case 'XXL':
        return Colors.deepOrange;
      case 'XXXL':
        return Colors.cyan;
      default:
        return Colors.blue;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Size Selector')),
      ),
      body: Center(
        child: Row(

          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _changeColorAndSize('S');
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(buttonColors['S']),
              ),
              child: Text('S'),
            ),
            ElevatedButton(
              onPressed: () {
                _changeColorAndSize('M');
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(buttonColors['M']),
              ),
              child: Text('M'),
            ),
            ElevatedButton(
              onPressed: () {
                _changeColorAndSize('L');
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(buttonColors['L']),
              ),
              child: Text('L'),
            ),
            ElevatedButton(
              onPressed: () {
                _changeColorAndSize('XL');
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(buttonColors['XL']),
              ),
              child: Text('XL'),
            ),
            ElevatedButton(
              onPressed: () {
                _changeColorAndSize('XXL');
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(buttonColors['XXL']),
              ),
              child: Text('XXL'),
            ),
            ElevatedButton(
              onPressed: () {
                _changeColorAndSize('XXXL');
              },
              style: ButtonStyle(
                backgroundColor:
                MaterialStateProperty.all(buttonColors['XXXL']),
              ),
              child: Text('XXXL'),
            ),
          ],
        ),
      ),
    );
  }
}