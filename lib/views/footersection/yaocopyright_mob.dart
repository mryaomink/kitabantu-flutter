import 'package:flutter/material.dart';
import 'package:my_charity/widgets/yao_sosmed.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

class CopyrightMob extends StatelessWidget {
  const CopyrightMob({
    Key key,
    @required this.width,
  }) : super(key: key);

  final double width;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 690.0,
      color: Color(0xffffffff),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          YaoSosmed(),
          Text(
            'Supported By:',
            style: TextStyle(
                fontSize: 16.0,
                color: Colors.black,
                fontWeight: FontWeight.w300),
          ),
          InkWell(
            onTap: () {
              _alibabaCloud();
            },
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  ('https://albertoroura.com/wp-content/uploads/2019/06/ad-ac.png'),
              fit: BoxFit.cover,
            ),
          ),
          InkWell(
            onTap: () {
              _codePolitan();
            },
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  ('https://ruko.s3.ap-southeast-1.amazonaws.com/rumahkomunitas.com/komunitas/lg_091218082347_24471_74eecacf22614aefb17dfd382b55f7744cdb3e2e_codepolitan_m.png'),
              fit: BoxFit.cover,
              width: 200,
              height: 200,
            ),
          ),
          InkWell(
            onTap: () {
              _reCloud();
            },
            child: FadeInImage.memoryNetwork(
              placeholder: kTransparentImage,
              image:
                  ('https://re-cloud.id/assets/images/re-cloud/re-cloud_black.png'),
              fit: BoxFit.cover,
              width: 173.28,
              height: 30,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          RichText(
            text: TextSpan(
                text: 'Copyright@2021',
                style: TextStyle(
                    fontSize: 16, color: Colors.black, letterSpacing: 3),
                children: <TextSpan>[
                  TextSpan(
                    text: ' By Yaomink',
                    style: TextStyle(color: Colors.redAccent, fontSize: 22.0),
                  ),
                ]),
          ),
        ],
      ),
    );
  }

  _alibabaCloud() async {
    const url = 'https://www.alibabacloud.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }

  _codePolitan() async {
    const url = 'https://www.codepolitan.com/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }

  _reCloud() async {
    const url = 'https://re-cloud.id/';
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Url Tidak Valid $url';
    }
  }
}
