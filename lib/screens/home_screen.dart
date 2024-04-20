// ignore_for_file: prefer_const_constructors

import 'package:daily_exercise_app/constant.dart';
import 'package:daily_exercise_app/widgets/my_appbar.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(
        title: '',
        backGroundColor: Colors.white,
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    borderRadius: BorderRadius.circular(20),
                    onTap: () {},
                    child: Icon(
                      Icons.search,
                      size: 30,
                    ),
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      color: kPrimaryClr,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'The Future of \nHealthy Life Style',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Lottie.asset(
                          'assets/gif/48646-girl-running.json',
                          fit: BoxFit.cover,
                          height: 250,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(20),
                    margin: const EdgeInsets.all(20),
                    width: 350,
                    height: 200,
                    decoration: BoxDecoration(
                      color: primarySwatch,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Physicaly Fit \nHealthy Life Style',
                          style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white),
                        ),
                        Lottie.asset(
                          'assets/gif/95396-workout-girl.json',
                          fit: BoxFit.cover,
                          height: 250,
                          width: 95,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15),
            Container(
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              height: 50,
              width: 150,
              child: Text(
                'Today',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
