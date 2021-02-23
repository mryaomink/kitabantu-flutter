import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class TextHeroMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      color: Color(0xffDB1622),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 10.0, right: 80),
              child: Text(
                'Berbuat Baik Bisa di mana saja\nAda Orang-Orang\nYang Membutuhkan Bantuan Sukarelawan',
                style: GoogleFonts.poppins(
                  fontSize: 16.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w200,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 80.0, top: 10.0, right: 80, bottom: 14.0),
              child: Text(
                'MARI BEKERJA BERSAMA\nLINTAS NEGARA DAN BUDAYA\nUNTUK SALING MEMBANTU',
                style: GoogleFonts.poppins(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 80.0,
              ),
              child: OutlineButton(
                child: Text(
                  'DONASI SEKARANG',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _donateNow();
                },
                color: Colors.white,
                hoverColor: Colors.black,
                borderSide: BorderSide(color: Colors.white, width: 3.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: OutlineButton(
                child: Text(
                  'MENJADI RELAWAN',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _daftarrelawan();
                },
                color: Colors.white,
                hoverColor: Colors.black,
                borderSide: BorderSide(color: Colors.white, width: 3.0),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0),
              child: OutlineButton(
                child: Text(
                  'LAPOR KEJADIAN',
                  style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                onPressed: () {
                  _laporTkp();
                },
                color: Colors.white,
                hoverColor: Colors.black,
                borderSide: BorderSide(color: Colors.white, width: 3.0),
              ),
            ),
          ]),
    );
  }

  _donateNow() async {
    const url = 'https://forms.gle/kjRsaCu1Ea7SDajJ9';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }

  _daftarrelawan() async {
    const url = 'https://forms.gle/sZHn9YWeJtv517Pr8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
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
