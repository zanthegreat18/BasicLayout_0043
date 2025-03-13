import 'package:flutter/material.dart';

void main() {
  runApp(const WeatherApp());
}

class WeatherApp extends StatelessWidget {
  const WeatherApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Icon(Icons.menu, color: Colors.black),
        title: Text('Weather App', style: TextStyle(color: Colors.black)),
        centerTitle: true,
        actions: [
          Icon(Icons.add_box, color: Colors.black),
          SizedBox(width: 10),
        ],
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Yogyakarta',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text('Today',
                style: TextStyle(fontSize: 18, color: Colors.grey)),
            SizedBox(height: 20),
            Text('28°C',
                style: TextStyle(
                    fontSize: 60, color: Colors.blue, fontWeight: FontWeight.bold)),
            SizedBox(height: 10),
            Text('Sunny',
                style: TextStyle(fontSize: 20, color: Colors.grey)),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.ac_unit, color: Colors.blue),
                SizedBox(width: 5),
                Text('5 km/h', style: TextStyle(color: Colors.blue, fontSize: 18)),
              ],
            ),
            SizedBox(height: 30),
            Container(
              padding: EdgeInsets.all(15),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Next 7 days',
                      style: TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: List.generate(4, (index) {
                      return WeatherHourWidget(time: ['Now', '17.00', '20.00', '23.00'][index]);
                    }),
                  ),
                ],
              ),
            ),
            Spacer(),
            Text('Developed by: muhammadfauzan.043',
                style: TextStyle(fontSize: 14, color: Colors.black)),
            SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}

class WeatherHourWidget extends StatelessWidget {
  final String time;
  const WeatherHourWidget({required this.time});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(time, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
        SizedBox(height: 5),
        Icon(Icons.ac_unit, color: Colors.blue),
        Text('28°C', style: TextStyle(fontSize: 16, color: Colors.blue)),
        SizedBox(height: 5),
        Icon(Icons.air, color: Colors.red),
        Text('10 km/h', style: TextStyle(fontSize: 14, color: Colors.red)),
        SizedBox(height: 5),
        Icon(Icons.umbrella, color: Colors.black),
        Text('0%', style: TextStyle(fontSize: 14)),
      ],
    );
  }
}
