import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
class HomeLocation extends StatelessWidget {
  const HomeLocation({super.key, required this.nameLocation});
  final String nameLocation;
  @override
  Widget build(BuildContext context) {
    final df = DateFormat('dd-MM-yyyy');
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.location_on, color: Colors.white),
            SizedBox(width: 10),
            Text(nameLocation, style: TextStyle(
              fontSize: 28,
              color: Colors.white,
              fontWeight: FontWeight.bold
            )),
          ],
        ),
        SizedBox(height: 17),
        Text(df.format(DateTime.now()), style: TextStyle(
          fontSize: 30,
          color: Colors.white,
        )),

      ],
    );
  }
}

