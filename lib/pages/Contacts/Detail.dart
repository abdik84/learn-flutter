import 'package:flutter/material.dart';

class Detail extends StatelessWidget {
  const Detail({Key key, this.name}) : super(key: key);
  final name;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          title: Text(name)),
      body: Center(
        child: Text("Ini Halaman Detail Kontak"),
      ),
    );
  }
}
