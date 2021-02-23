import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:my_charity/widgets/yaologo_one.dart';

class CarakerjaDesktop extends StatelessWidget {
  const CarakerjaDesktop({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 460,
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          YaoLogoOne(
            iconData: FontAwesomeIcons.bookOpen,
            size: 50,
            color: Colors.red,
            title:
                "Donator mengisi formulir\nyang sudah di sediakan\nOleh Tim Kami",
          ),
          YaoLogoOne(
            iconData: FontAwesomeIcons.truckMoving,
            size: 50,
            color: Colors.red,
            title:
                "Tim Relawan Akan Survey\nDan Mencari Informasi\ndan Mulai Menuju TKP",
          ),
          YaoLogoOne(
            iconData: FontAwesomeIcons.reply,
            size: 50,
            color: Colors.red,
            title: "Tim Relawan Melapor\nBahwa Barang Sudah Berhasil\nSampai",
          ),
        ],
      ),
    );
  }
}
