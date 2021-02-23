import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_charity/widgets/yaologo_one.dart';

class CarakerjaMobile extends StatelessWidget {
  const CarakerjaMobile({
    Key key,
    @required this.width,
    this.height,
  }) : super(key: key);

  final double width;
  final double height;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      color: Colors.black,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          YaoLogoOne(
            iconData: FontAwesomeIcons.bookOpen,
            size: 35,
            color: Colors.red,
            title:
                "Donator mengisi formulir\nyang sudah di sediakan\nOleh Tim Kami",
          ),
          YaoLogoOne(
            iconData: FontAwesomeIcons.truckMoving,
            size: 35,
            color: Colors.red,
            title:
                "Tim Relawan Akan Survey\nDan Mencari Informasi\ndan Mulai Menuju TKP",
          ),
          YaoLogoOne(
            iconData: FontAwesomeIcons.reply,
            size: 35,
            color: Colors.red,
            title: "Tim Relawan Melapor\nBahwa Barang Sudah Berhasil\nSampai",
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
