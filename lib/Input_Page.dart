import 'package:flutter/material.dart';
import 'Repeate_contanier.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Repeate_contanier(
              colors: Color(0xFF1D1E33),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
                Expanded(
                  child: Repeate_contanier(
                    colors: Color(0xFF1D1E33),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
