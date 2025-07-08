import 'package:flutter/material.dart';
class HomeDetailWeather extends StatelessWidget {
  const HomeDetailWeather({super.key, required this.humidity, required this.speedWind});
  final num humidity;
  final num speedWind;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icons/windy.png'),
            Text('${speedWind} km/h',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
            )
          ],
        ),

        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/icons/humidity.png'),
            Text('${humidity}%',
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            )
          ],
        )
      ],
    )
      ;
  }
}
