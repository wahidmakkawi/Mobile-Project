import 'package:flutter/material.dart';

class bookings extends StatefulWidget {
  bookings({Key ?key}) : super(key: key);

  @override
  _bookingsState createState() {
    return _bookingsState();
  }
}

class _bookingsState extends State<bookings> {
  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Bookings'),
      ),
    );
  }
}