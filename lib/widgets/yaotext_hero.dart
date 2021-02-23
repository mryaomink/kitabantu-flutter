import 'package:flutter/material.dart';
import 'package:my_charity/views/herosection/text_herodesk.dart';
import 'package:my_charity/views/herosection/texthero_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class YaoTextHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: TextHeroDesk(),
      mobile: TextHeroMobile(),
    );
  }
}
