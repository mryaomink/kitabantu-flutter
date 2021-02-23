import 'package:flutter/material.dart';
import 'package:my_charity/screens/cara_kerja.dart';

import 'package:my_charity/screens/yao_copyright.dart';

import 'package:my_charity/widgets/footer_image.dart';
import 'package:my_charity/widgets/yaohero_img.dart';
import 'package:my_charity/widgets/yaotext_hero.dart';

class YaominkHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Color(0xffDB1622),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          Column(
            children: [
              Container(
                width: width,
                height: height,
                child: Row(
                  children: [
                    YaoTextHero(),
                    Expanded(
                      child: YaoImageHero(),
                    ),
                  ],
                ),
              ),
              CaraKerja(width: width),
              SizedBox(
                height: 20.0,
              ),
              FooterImage(),
              SizedBox(
                height: 20.0,
              ),
              YaoCopyright(width: width),
            ],
          ),
        ],
      ),
    );
  }
}
