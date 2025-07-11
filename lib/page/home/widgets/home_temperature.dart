import 'package:flutter/material.dart';
class HomeTemperature extends StatelessWidget {
  const HomeTemperature ({super.key, required this.temp});
  final num temp;
  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(temp.toString(), style: TextStyle(
            fontSize: 100,
            color: Colors.white,
            fontWeight: FontWeight.bold),),
        const Text('0', style: TextStyle(
            fontSize: 36,
            color: Colors.white,
            fontWeight: FontWeight.bold),),
      ],
    );
  }
}
