import 'package:flutter/material.dart';
import 'package:my_charity/views/carakerjasection/carakerja_desk.dart';
import 'package:my_charity/views/carakerjasection/carakerja_mobile.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CaraKerja extends StatelessWidget {
  const CaraKerja({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      desktop: CarakerjaDesktop(
        width: width,
      ),
      mobile: CarakerjaMobile(
        width: width,
      ),
    );
  }
}
