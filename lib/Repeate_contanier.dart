import 'package:flutter/material.dart';

class Repeate_contanier extends StatelessWidget {
  Repeate_contanier({@required this.colors, this.cardWidge});
  final Color colors;
  final Widget cardWidge;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardWidge,
      margin: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
          color: colors, borderRadius: BorderRadiusDirectional.circular(15.0)),
    );
  }
}
