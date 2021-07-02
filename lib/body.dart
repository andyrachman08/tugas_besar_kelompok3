import 'package:flutter/material.dart';
import 'package:tugasbesar/HeaderAtas.dart';
import 'package:tugasbesar/dbhelper.dart';
import 'package:tugasbesar/home.dart';
import 'package:tugasbesar/item.dart';
import 'package:tugasbesar/warna.dart';
import 'dart:async';
import 'entryform.dart';
import 'item.dart';

class Body extends StatelessWidget {
  DbHelper dbHelper = DbHelper();
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          HeaderAtas(size: size),
          Text(
            "BCD",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 80.0,
            ),
          ),
          Text(
            "Mobile",
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 30.0,
            ),
          ),
          Text(
            " Selalu ada dimanapun anda berada ",
            style: TextStyle(
              color: Colors.black,
              fontStyle: FontStyle.italic,
              fontSize: 15.0,
            ),
          ),
          Divider(),
          Container(
            child: SizedBox(
              width: 300,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: kPrimaryColor,
                  padding: EdgeInsets.symmetric(vertical: 15),
                  shape: new RoundedRectangleBorder(
                    borderRadius: new BorderRadius.circular(15.0),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      //menuju form pengisioan biodataa
                      builder: (context) => Home(),
                    ),
                  );
                },
                child: Text(
                  'Daftar Nasabah',
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
