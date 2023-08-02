import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app2/Pages/InnerPage.dart';

class Notification_page extends StatelessWidget {
  const Notification_page({super.key});
  static String id = 'Notification_page';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDAD0E1),
      appBar: AppBar(
        backgroundColor: const Color(0xffDAD0E1),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushNamed(context, InnerPage.id);
              },
              icon: SvgPicture.asset('assets/images/return.svg'),
            ),
            const SizedBox(width: 24),
            const SizedBox(width: 10),
            const Text(
              'Notification',
              style: TextStyle(
                color: Color(0xff300759),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: (() => {}),
                  icon: SvgPicture.asset(
                    'assets/images/Not.svg',
                    width: 23,
                    height: 23,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Stack(
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              width: 300,
              height: 150,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Padding(
                padding: const EdgeInsets.only(right: 130),
                child: Image.asset(
                  'assets/images/PhotoNot.png',
                  width: 165,
                  height: 100,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 180),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 300,
                height: 110,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 80),
                      child: Row(
                        children: [
                          Text(
                            'Dont miss Salah !!',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff300759)),
                          ),
                          Text(
                            ' 2 hour ago ',
                            style: TextStyle(color: Color(0xff484848)),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      'Its time for zuhr and dont miss the reward for praying zuhr benefits of praying zuhr prayer',
                      style: TextStyle(fontSize: 16),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 180),
                      child: Text(
                        'continue reading....',
                        style: TextStyle(
                          color: Color(0xff484848),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 310),
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                width: 300,
                height: 70,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.white,
                ),
                child: const Column(
                  children: [
                    SizedBox(
                      height: 5,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 120),
                      child: Text(
                        'Today’s task 4 hour ago',
                        style: TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Color(0xff300759)),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text(
                        'Get this huge reward in Jannah for reciting this surah....',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color(0xff484848),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Positioned(
            bottom: 540,
            left: 220,
            right: 0,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'You will be tested!',
                  style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color(0xff300759)),
                ),
                SizedBox(
                  height: 5,
                ),
                Text('NO Exception',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        color: Color(0xff300759))),
                Text(
                  'YouTube',
                  style: TextStyle(color: Color(0xffFF0000)),
                ),
                Text(
                  'data',
                  style: TextStyle(color: Color(0xff484848)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
