import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app2/Pages/InnerPage.dart';
import 'package:quran_app2/moduls/CustomAppBar.dart';

class AlFatiah extends StatelessWidget {
  const AlFatiah({super.key});
  static String id = 'AlFatiah';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffdad0e1),
      appBar: CustomAppBar(
        title: 'Quran',
        leadingIcon: 'assets/images/return.svg',
        onTab: () {
          Navigator.pushNamed(context, InnerPage.id);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Al-Fatiah",
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          color: Color(0xff300759),
                        )),
                    Text(
                      "Verse 7",
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xff300759),
                      ),
                    ),
                    Text("(The Opener)",
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff300759),
                        )),
                    SizedBox(height: 20),
                  ],
                ),
                const Spacer(), // To create space between the texts and SVG icons
                Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        'assets/images/Share.svg',
                        width: 22,
                        height: 22,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/images/play.svg',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      SvgPicture.asset(
                        'assets/images/tsvg.svg',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(
                        width: 20,
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Column(
                children: [
                  Text(
                    "بسم الله الرحمن الرحيم",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff300759)),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('In the Name of Allah-the Most Compassionate',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484848))),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60),
              child: Text('Most Merciful',
                  style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Color(0xff484848))),
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Column(
                children: [
                  Text(
                    "الحمد لله رب العلمين",
                    style: TextStyle(
                        fontSize: 19,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff300759)),
                  ),
                ],
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('All praise is for Allah—Lord of all worlds,',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484848))),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Padding(
                padding: EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Text(
                      "الرحمن الرحيم",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff300759)),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('the Most Compassionate, Most Merciful,',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484848))),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 220),
              child: Padding(
                padding: EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Text(
                      "ملك يوم الدين",
                      style: TextStyle(
                          fontSize: 19,
                          fontWeight: FontWeight.w400,
                          color: Color(0xff300759)),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('Master of the Day of Judgmen',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484848))),
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 200),
              child: Padding(
                padding: EdgeInsets.only(left: 35),
                child: Column(
                  children: [
                    Text(
                      "اياك نعبد واياك نستعين",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff300759)),
                    ),
                  ],
                ),
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text('You ˹alone˺ we worship and You ˹alone˺ we ask',
                    style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        color: Color(0xff484848))),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 50),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xffE5B6F2),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/Group 2.svg',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Container(
                    width: 80,
                    height: 80,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: const Color(0xff300759),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/Group 3.svg',
                        height: 40,
                        width: 40,
                      ),
                    ),
                  ),
                  const Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 40),
                    child: Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0xffE5B6F2),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/images/Group 4.svg',
                          height: 30,
                          width: 30,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
