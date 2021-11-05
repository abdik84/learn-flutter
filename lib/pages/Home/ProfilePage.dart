import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  ProfilePage({Key key}) : super(key: key);
  final String title = "Profile Page";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
        ),
        body: Center(
          child: Text("Ini Halaman Profile"),
        ));
  }
}
