import 'package:flutter/material.dart';
import 'package:weather_icons/weather_icons.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const WeatherScreen(),
    );
  }
}

class WeatherScreen extends StatelessWidget {
  const WeatherScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomLeft,
            end: Alignment.bottomRight,
            colors: <Color>[
              Color.fromARGB(255, 221, 216, 221),
              Color.fromARGB(255, 126, 125, 128),
            ], // Gradient from https://learnui.design/tools/gradient-generator.html
            tileMode: TileMode.mirror,
          ),
        ),
        child: Column(
          children: const [
            TopWidget(),
            MiddleWidget(),
          ],
        ),
      ),
    );
  }
}

class TopWidget extends StatelessWidget {
  const TopWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: const LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: <Color>[
            Color.fromARGB(255, 0, 243, 194),
            Color.fromARGB(255, 0, 168, 235),
            Color.fromARGB(255, 9, 125, 219),
          ],
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(5, 3), // changes position of shadow
          ),
        ],
        borderRadius: const BorderRadius.all(Radius.circular(32)),
      ),
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      padding: const EdgeInsets.all(20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              SizedBox(
                width: 100,
                height: 100,
                child: Placeholder(),
              ),
              Text(
                '27°',
                style: TextStyle(
                    fontSize: 64,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'Reda',
                    style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Text('Sobota 11/02/2023',
                      style: TextStyle(
                        fontSize: 16,
                        // fontWeight: FontWeight.bold,
                        color: Colors.white,
                      )),
                ],
              ),
              Icon(WeatherIcons.windy,
                  size: 100, color: Colors.white.withOpacity(0.5)),
            ],
          ),
        ],
      ),
    );
  }
}

class MiddleWidget extends StatelessWidget {
  const MiddleWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: const Offset(5, 3), // changes position of shadow
          ),
        ],
        color: Colors.white,
        borderRadius: const BorderRadius.all(Radius.circular(32)),
      ),
      width: double.infinity,
      margin: const EdgeInsets.all(16),
      padding: const EdgeInsets.all(32),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Weather Details',
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Icon(Icons.refresh),
            ],
          ),
          const SizedBox(
            height: 10,
            // child: Placeholder(),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Detal1(),
              Detal2(),
              Detal3(),
            ],
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Detal4(),
              Detal5(),
              Detal6(),
            ],
          ),
        ],
      ),
    );
  }
}

class Detal3 extends StatelessWidget {
  const Detal3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.ac_unit),
        Text(
          'data',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Detal2 extends StatelessWidget {
  const Detal2({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.ac_unit),
        Text(
          'data',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Detal1 extends StatelessWidget {
  const Detal1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.wind_power),
        Text(
          'data',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Detal4 extends StatelessWidget {
  const Detal4({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.wind_power),
        Text(
          'data',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Detal5 extends StatelessWidget {
  const Detal5({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.wind_power),
        Text(
          'data',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}

class Detal6 extends StatelessWidget {
  const Detal6({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        Icon(Icons.wind_power),
        Text(
          'data',
          style: TextStyle(color: Colors.grey),
        ),
        Text(
          'data',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
