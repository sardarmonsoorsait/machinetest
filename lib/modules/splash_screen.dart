import 'package:flutter/material.dart';
import 'package:flutter_interview/modules/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 200,
            ),
            Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://cdn.pixabay.com/photo/2017/01/31/22/32/doctor-2027768_1280.png'))),
            ),
            Text(
              'Doctor\'s Helpline',
              style: TextStyle(
                  fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
            ),
            Text(
              'The tech helpline for covid-19 Rather than \n rushing to the doctor  or healthcare center. we  \n can help remotely get a doctor ',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: 100,
            ),
            InkWell(
              onTap: () {
                Navigator.of(context)
                    .pushReplacement(MaterialPageRoute(builder: (context) => HomeScreen()));
              },
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.white,
                ),
                child: Center(
                    child: Text(
                  'Get Started',
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 20,
                  ),
                )),
              ),
            ),
            SizedBox(
              width: 75,
            ),
            Text(
              'Powered By',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              height: 50,
              width: 150,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          'https://www.skuld.com/contentassets/c0d30d7bf2c64c67b5c0a29dbccf1ebe/covid-19_coronavirus_design_logo-shutterstock_1663374028.jpg'))),
            )
          ],
        ),
      ),
    );
  }
}
