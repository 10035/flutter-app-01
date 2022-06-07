import 'package:flutter/material.dart';

class TripsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Trips'),
        ),
        body: Center(child: Text('Trips', style: TextStyle(fontSize: 40))),
      );
}