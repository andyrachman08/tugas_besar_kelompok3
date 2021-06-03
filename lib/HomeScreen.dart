import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tugasbesar/body.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      elevation: 0,
    );
  }
}
