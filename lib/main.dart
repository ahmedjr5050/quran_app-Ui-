import 'package:flutter/material.dart';
import 'package:quran_app2/Pages/Al-Fatiah.dart';
import 'package:quran_app2/Pages/HomePage.dart';
import 'package:quran_app2/Pages/InnerPage.dart';
import 'package:quran_app2/Pages/Notification.dart';
import 'package:quran_app2/Pages/PrayerPage.dart';
import 'package:quran_app2/Pages/Settings.dart';
import 'package:quran_app2/Pages/Signin.dart';

//import 'Pages/HomePage.dart';
void main() {
  runApp(Quran());
}

class Quran extends StatelessWidget {
  const Quran({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Signin.id,
      routes: {
        Signin.id: (context) => const Signin(),
        SplashScreen.id: (context) => const SplashScreen(),
        InnerPage.id:(context) => const InnerPage(),
        Notification_page.id:(context) =>const Notification_page(),
        PrayerPage.id:(context)=>const PrayerPage(),
        AlFatiah.id:(context)=>const AlFatiah(),
      },
    );
  }
}
