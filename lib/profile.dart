import 'package:flutter/material.dart';

class profile extends StatefulWidget {
  profile({Key ?key}) : super(key: key);

  @override
  _profileState createState() {
    return _profileState();
  }
}

class _profileState extends State<profile> {
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
        title: Text('Profile'),
      ),
    );
  }
}