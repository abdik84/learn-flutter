import 'package:flutter/material.dart';

// Color colorOne = Color(0xFF044855);
Color colorOne = Colors.teal[700];
Color colorTwo = Colors.teal;
Color colorThree = Colors.teal[400];
Color colorFour = Colors.teal[600];

class HomePage extends StatelessWidget {
  HomePage({Key key}) : super(key: key);
  final String title = "LOGO DISINI";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(title),
          elevation: 0,
        ),
        body: Container(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            MainHeader(),
            Expanded(
              child: GridView.count(
                crossAxisCount: 4,
                childAspectRatio: 1,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                children: <Widget>[
                  Column(children: [
                    InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(50),
                        splashColor: Colors.teal,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color.fromRGBO(0x00, 0x80, 0x80, .2),
                                Color.fromRGBO(0xFF, 0xFF, 0x00, .1)
                              ],
                            ),
                          ),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.phone_android,
                                color: Color(0xFF044855)),
                          ),
                        )),
                    SizedBox(height: 5),
                    Text(
                      "Pulsa",
                      style: TextStyle(fontSize: 12),
                    )
                  ]),
                  Column(children: [
                    InkWell(
                        onTap: () {},
                        borderRadius: BorderRadius.circular(50),
                        splashColor: Colors.teal,
                        child: Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              colors: <Color>[
                                Color.fromRGBO(0x00, 0x80, 0x80, .2),
                                Color.fromRGBO(0xFF, 0xFF, 0x00, .1)
                              ],
                            ),
                          ),
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: Icon(Icons.bolt, color: Color(0xFF044855)),
                          ),
                        )),
                    SizedBox(height: 5),
                    Text(
                      "PLN",
                      style: TextStyle(fontSize: 12),
                    )
                  ]),
                  Column(children: [Icon(Icons.sports_esports), Text("Item")]),
                  Column(children: [Icon(Icons.public), Text("Item")]),
                  Column(children: [Icon(Icons.tv), Text("Item")]),
                  Column(
                      children: [Icon(Icons.water_damage_sharp), Text("Item")]),
                  Column(children: [Icon(Icons.verified_user), Text("Item")]),
                  Column(children: [Icon(Icons.apps), Text("Item")]),
                ],
              ),
            ),
          ],
        )));
  }
}

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      child: Container(
        alignment: Alignment.topLeft,
        width: double.infinity,
        height: 160,
        padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(children: [
              Text(
                "Cash",
                style: TextStyle(color: Colors.white),
              ),
            ]),
            SizedBox(height: 10),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Rp",
                  style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                Text("1.234.567",
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white)),
              ],
            ),
            Card(
              margin: EdgeInsets.fromLTRB(10, 20, 10, 0),
              clipBehavior: Clip.antiAlias,
              color: Colors.white,
              elevation: 3.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                    horizontal: 35.0, vertical: 13.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: [
                        Icon(
                          Icons.add_box,
                          color: Color(0xFF044855),
                        ),
                        Text(
                          "Top Up",
                          style:
                              TextStyle(color: Color(0xFF044855), fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.swap_horiz,
                          color: Color(0xFF044855),
                        ),
                        Text(
                          "Transfer",
                          style:
                              TextStyle(color: Color(0xFF044855), fontSize: 12),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Icon(
                          Icons.pending_actions,
                          color: Color(0xFF044855),
                        ),
                        Text(
                          "Mutasi",
                          style:
                              TextStyle(color: Color(0xFF044855), fontSize: 12),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      painter: HeaderBackground(),
    );
  }
}

class HeaderBackground extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Path path = Path();
    Paint paint = Paint();

    path.lineTo(0, size.height * 0.65);
    path.quadraticBezierTo(size.width * 0.20, size.height * 0.90,
        size.width * 0.5, size.height * 0.90);
    path.quadraticBezierTo(
        size.width * 0.80, size.height * 0.90, size.width, size.height * 0.65);
    path.lineTo(size.width, 0);
    paint.color = colorTwo;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.15);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.50,
        size.width * 0.60, size.height * 0.20);
    paint.color = colorThree;
    canvas.drawPath(path, paint);

    path = Path();
    path.lineTo(0, size.height * 0.05);
    path.quadraticBezierTo(size.width * 0.30, size.height * 0.40,
        size.width * 0.60, size.height * 0.20);
    path.quadraticBezierTo(
        size.width * 0.80, size.height * 0.05, size.width, size.height * 0.20);
    path.lineTo(size.width, 0);
    paint.color = colorOne;
    canvas.drawPath(path, paint);

    path = Path();
    path.moveTo(size.width, size.height * 0.35);
    path.lineTo(size.width, size.height * 0.20);
    path.quadraticBezierTo(size.width * 0.85, size.height * 0,
        size.width * 0.30, size.height * 0.75);
    path.quadraticBezierTo(
        size.width * 0.80, size.height * 0.15, size.width, size.height * 0.35);

    path.lineTo(size.width, size.height * .35);
    paint.color = colorFour;
    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return oldDelegate != this;
  }
}
