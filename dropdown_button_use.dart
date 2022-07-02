import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DropDownKullanimi extends StatefulWidget {
  DropDownKullanimi({Key? key}) : super(key: key);

  @override
  State<DropDownKullanimi> createState() => _DropDownKullanimiState();
}

class _DropDownKullanimiState extends State<DropDownKullanimi> {
  String? _secilenSehir = null;
  List<String> _tumSehirler = [
    'Ankara',
    'Bolu',
    'İstanbul',
    'İzmir',
    'Antalya'
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text('ŞEHİR SEÇİNİZ'),
        icon: Icon(Icons.arrow_downward),
        iconSize: 15,
        underline: Container(
          height: 5,
          color: Colors.blue,
        ),
        style: TextStyle(color: Colors.red),
        /*items: [
          DropdownMenuItem(
            child: Text('Ankara Şehri'),
            value: "Ankara",
          ),
          DropdownMenuItem(
            child: Text('Bolu Şehri'),
            value: "Bolu",
          ),
          DropdownMenuItem(
            child: Text('İstanbul Şehri'),
            value: "İstanbul",
          ),
        ],*/
        items: _tumSehirler
            .map(
              (String oankiSehir) => DropdownMenuItem(
                child: Text(oankiSehir),
                value: oankiSehir,
              ),
            )
            .toList(),
        value: _secilenSehir,
        onChanged: (String? yeni) {
          setState(() {
            _secilenSehir = yeni;
          });
        },
      ),
    );
  }
}
