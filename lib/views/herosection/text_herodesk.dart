import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_charity/widgets/yao_sosmed.dart';
import 'package:url_launcher/url_launcher.dart';

class TextHeroDesk extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: Container(
        width: MediaQuery.of(context).size.width / 2,
        color: Color(0xffDB1622),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 16.0, right: 80),
              child: Text(
                  'Berbuat Baik Bisa di mana saja\nAda Orang-Orang Yang\nMembutuhkan Bantuan Sukarelawan',
                  style: GoogleFonts.poppins(
                      fontSize: 22.0,
                      color: Colors.white,
                      fontWeight: FontWeight.w200)),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 10.0, right: 80),
              child: Text(
                'MARI BEKERJA BERSAMA\nLINTAS NEGARA DAN BUDAYA\nUNTUK SALING MEMBANTU',
                style: GoogleFonts.poppins(
                  fontSize: 32.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 80.0, top: 8.0, right: 80),
              child: Text(
                'website ini penghubung antara Donator dan Relawan\ndengan Tujuan Membantu Orang-orang\nYang Tertimpa Musibah',
                style: GoogleFonts.poppins(
                    fontSize: 15.5,
                    color: Colors.white,
                    fontWeight: FontWeight.w200),
              ),
            ),
            SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                OutlineButton(
                  child: Text(
                    'DONASI SEKARANG',
                    style: TextStyle(
                        fontSize: 20,
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
                OutlineButton(
                  child: Text(
                    'MENJADI RELAWAN',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    _daftarRelawan();
                  },
                  color: Colors.white,
                  hoverColor: Colors.black,
                  borderSide: BorderSide(color: Colors.white, width: 3.0),
                ),
              ],
            ),
            SizedBox(
              height: 60,
            ),
            YaoSosmed(),
            SizedBox(
              height: 25.0,
            ),
          ],
        ),
      ),
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

  _daftarRelawan() async {
    const url = 'https://forms.gle/sZHn9YWeJtv517Pr8';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }
}
