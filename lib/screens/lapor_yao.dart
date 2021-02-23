import 'package:flutter/material.dart';

class LaporYao extends StatefulWidget {
  @override
  _LaporYaoState createState() => _LaporYaoState();
}

class _LaporYaoState extends State<LaporYao> {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            'Jika Kalian Ingin Melaporkan Sebuah peristiwa\nSilahkan Download App Android Untuk Melapor Kejadian,',
            style: TextStyle(
                fontSize: 28.0,
                color: Colors.black,
                fontWeight: FontWeight.bold),
          ),
          RaisedButton(
            color: Colors.red,
            onPressed: _downloadNow,
            child: Text(
              'Download',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }

  _downloadNow() async {}
}
