import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_charity/screens/yaomink_home.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() => runApp(YaominkApp());

class YaominkApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<int, Color> color = {
      50: Color.fromRGBO(136, 14, 79, .1),
      100: Color.fromRGBO(136, 14, 79, .2),
      200: Color.fromRGBO(136, 14, 79, .3),
      300: Color.fromRGBO(136, 14, 79, .4),
      400: Color.fromRGBO(136, 14, 79, .5),
      500: Color.fromRGBO(136, 14, 79, .6),
      600: Color.fromRGBO(136, 14, 79, .7),
      700: Color.fromRGBO(136, 14, 79, .8),
      800: Color.fromRGBO(136, 14, 79, .9),
      900: Color.fromRGBO(136, 14, 79, 1),
    };
    MaterialColor colorCustom = MaterialColor(0xffDB1622, color);
    Widget mySplash = SplashScreenView(
      duration: 5000,
      imageSize: 400,
      imageSrc: 'assets/images/kitabantu.png',
      text: 'Situs Para Relawan Dan Donator\nBerhati Malaikat',
      textType: TextType.TyperAnimatedText,
      textStyle:
          GoogleFonts.poppins(fontSize: 18.0, fontWeight: FontWeight.bold),
      backgroundColor: Colors.white,
      home: YaominkHome(),
    );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      title: 'Kita Bantu',
      theme: ThemeData(
        primarySwatch: colorCustom,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      routes: {
        '/home': (context) => YaominkHome(),
      },
      home: mySplash,
    );
  }
}
