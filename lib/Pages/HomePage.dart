import 'package:flutter/material.dart';
import 'package:quran_app2/Pages/Signin.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  static String id = 'SplashScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffDAD0E1),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'Quran App',
                    style: TextStyle(
                        color: Color(0xff300759),
                        fontSize: 24,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Learn Quran and every day and\nRecite once everyday',
                    style: TextStyle(color: Color(0xff9D1DF2), fontSize: 13),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      Container(
                        height: 450,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30),
                            color: const Color(0xFF300759)),
                        child: Image.asset('assets/images/mosque 1.png'),
                      ),
                      Positioned(
                        left: 0,
                        bottom: -23,
                        right: 0,
                        child: Center(
                          child: GestureDetector(
                            behavior: HitTestBehavior.opaque,
                            onTap: () {},
                            child: Container(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 40, vertical: 16),
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(30)),
                              child: GestureDetector(
                                child: Text(
                                  'Get Started',
                                ),
                                onTap: () {
                                  Navigator.pushNamed(context, Signin.id);
                                },
                              ),
                            ),
                          ),
                        ),
                      )
                    ],
                  )
                ]),
          ),
        ),
      ),
    );
  }
}
