import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:transparent_image/transparent_image.dart';

class FooterImage extends StatelessWidget {
  final List<String> imgList = [
    'https://images.unsplash.com/photo-1488521787991-ed7bbaae773c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1459183885421-5cc683b8dbba?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1504159506876-f8338247a14a?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1571008592377-e362723e8998?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://images.unsplash.com/photo-1530490125459-847a6d437825?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&auto=format&fit=crop&w=763&q=80',
    'https://images.unsplash.com/photo-1589789692248-15afbf2dcda1?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=750&q=80',
    'https://assets.kompasiana.com/items/album/2021/01/14/kota-pelaihari-terlihat-tergenang-banjir-banjarmasin-tribunnews-com-60005ffdd541df7b000bc112.jpg?t=o&v=740&x=416'
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Color(0xffDB1622),
          margin: EdgeInsets.all(30),
          child: RichText(
            text: TextSpan(
                text: 'Bantuan Kalian Adalah',
                style: TextStyle(
                    fontSize: 28, color: Colors.white, letterSpacing: 3),
                children: <TextSpan>[
                  TextSpan(
                      text: ' Harapan Kami',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 36.0,
                        fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.bold,
                      )),
                ]),
          ),
        ),
        SizedBox(
          height: 3,
          child: Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.white,
          ),
        ),
        Container(
          color: Color(0xffDB1622),
          height: MediaQuery.of(context).size.height / 2,
          width: MediaQuery.of(context).size.width,
          child: CarouselSlider(
            options: CarouselOptions(
                aspectRatio: 16 / 9,
                height: 400,
                initialPage: 0,
                enlargeCenterPage: true,
                scrollDirection: Axis.horizontal,
                autoPlay: true,
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.easeInOutBack,
                enableInfiniteScroll: true),
            items: imgList
                .map(
                  (item) => InkWell(
                    onTap: () {
                      print('klik');
                    },
                    child: Container(
                      child: Center(
                          child: ClipRRect(
                        borderRadius: BorderRadius.circular(12),
                        child: FadeInImage.memoryNetwork(
                          image: item,
                          fit: BoxFit.cover,
                          placeholder: kTransparentImage,
                          width: 800,
                        ),
                      )),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
        SizedBox(
          height: 3,
          child: Container(
            width: MediaQuery.of(context).size.width / 5,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
