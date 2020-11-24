import 'package:flutter/material.dart';

class Repeate_contanier extends StatelessWidget {
  Repeate_contanier({@required this.colors});
  final Color colors;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadiusDirectional.circular(15.0)),
    );
  }
}
