import 'package:flutter/material.dart';
import 'package:my_charity/views/footersection/yaocopyright_desk.dart';
import 'package:my_charity/views/footersection/yaocopyright_mob.dart';
import 'package:responsive_builder/responsive_builder.dart';

class YaoCopyright extends StatelessWidget {
  const YaoCopyright({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CopyrightDesk(
        width: width,
      ),
      mobile: CopyrightMob(
        width: width,
      ),
    );
  }
}
