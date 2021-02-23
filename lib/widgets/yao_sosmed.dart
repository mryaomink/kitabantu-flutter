import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class YaoSosmed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: () {
            _goFb();
          },
          child: Icon(
            FontAwesomeIcons.facebookSquare,
            color: Colors.black,
            size: 45,
          ),
        ),
        InkWell(
          onTap: () {
            _goIg();
          },
          child: Icon(
            FontAwesomeIcons.instagramSquare,
            color: Colors.black,
            size: 45,
          ),
        ),
        InkWell(
          onTap: () {
            goYt();
          },
          child: Icon(
            FontAwesomeIcons.youtubeSquare,
            color: Colors.black,
            size: 45,
          ),
        ),
        InkWell(
          onTap: () {
            _goTw();
          },
          child: Icon(
            FontAwesomeIcons.twitterSquare,
            color: Colors.black,
            size: 45,
          ),
        ),
      ],
    );
  }

  _goFb() async {
    const url = 'https://www.facebook.com/haxcer';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }

  _goIg() async {
    const url = 'https://www.instagram.com/yaomink_12';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }

  goYt() async {
    const url = 'https://www.youtube.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }

  _goTw() async {
    const url = 'https://www.twitter.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }
}
