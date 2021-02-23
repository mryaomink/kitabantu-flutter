import 'package:flutter/material.dart';

class YaoLogoOne extends StatelessWidget {
  final IconData iconData;
  final Color color;
  final double size;
  final String title;

  const YaoLogoOne(
      {@required this.iconData,
      @required this.color,
      @required this.size,
      @required this.title});
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 125,
              height: 69,
              child: Icon(
                iconData,
                color: color,
                size: size,
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                title,
                style: TextStyle(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(
              height: 3,
              width: 38,
              child: Container(
                width: MediaQuery.of(context).size.width / 2,
                color: Colors.redAccent,
              ),
            ),
          ],
        ),
      ],
    );
  }
}
