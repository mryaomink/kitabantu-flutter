import 'package:flutter/material.dart';
import 'package:my_charity/screens/lapor_yao.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class YaoImageHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: double.infinity,
          child: FadeInImage.memoryNetwork(
            placeholder: kTransparentImage,
            image:
                ('https://images.unsplash.com/photo-1469571486292-0ba58a3f068b?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=1350&q=80'),
            fit: BoxFit.cover,
          ),
        ),
        Align(
          alignment: Alignment.center,
          child: Container(
            height: 32,
            child: OutlineButton(
              child: Text(
                'Lapor Kejadian',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LaporYao()));
              },
              color: Colors.white,
              hoverColor: Colors.black,
              borderSide: BorderSide(color: Colors.white, width: 3.0),
            ),
          ),
        ),
      ],
    );
  }

  _laporTkp() async {
    const url = 'https://forms.gle/oDiCNETGjgBdBUXs9';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }
}
