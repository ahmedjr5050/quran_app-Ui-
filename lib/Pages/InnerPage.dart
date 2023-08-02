import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app2/Pages/Al-Fatiah.dart';
import 'package:quran_app2/Pages/Notification.dart';
import 'package:quran_app2/Pages/PrayerPage.dart';
import 'package:quran_app2/moduls/CustomAppBar.dart';
import 'package:quran_app2/moduls/Customendpageicons.dart';
import 'package:quran_app2/moduls/listofmenu.dart';
import 'package:quran_app2/moduls/sproitior.dart';

class InnerPage extends StatelessWidget {
  const InnerPage({super.key});
  static String id = 'InnerPage';
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4, // Set the number of tabs you have (4 tabs)
      child: Scaffold(
        backgroundColor: const Color(0xffDAD0E1),
        appBar: CustomAppBar(
          title: "Quran App",
          leadingIcon: 'assets/images/menu-icon.svg',
          onTab: () {},
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              const Text(
                "Asalamu Alaikum !!!",
                style: TextStyle(
                  fontSize: 13,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff9D1DF2),
                ),
              ),
              const SizedBox(height: 4),
              const Text(
                "Mohamed Rasith",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff300759),
                ),
              ),
              const SizedBox(height: 24),
              Stack(
                children: [
                  Container(
                    width: 300,
                    height: 130,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color(0xffe5b6f2),
                    ),
                  ),
                  Positioned(
                    bottom: 30,
                    right: 80,
                    child: SvgPicture.asset('assets/images/Big.svg'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            SvgPicture.asset('assets/images/Book.svg'),
                            const SizedBox(width: 8),
                            Text('Last Read'),
                          ],
                        ),
                        const SizedBox(height: 20),
                        GestureDetector(
                          child: Text(
                            'Al-Fatihah',
                            style: TextStyle(
                              color: Color(0xff300759),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          onTap: () {
                            Navigator.pushNamed(context, AlFatiah.id);
                          },
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Ayat No: 1',
                          style: TextStyle(color: Color(0xff300759)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(right: 80),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TabBar(
                      isScrollable: true,
                      labelColor: Color(0xff9D1DF2),
                      unselectedLabelColor: Color(0xff9D1DF2),
                      indicatorColor: Color(0xff300759),
                      tabs: [
                        Tab(text: 'Surah'),
                        Tab(text: 'Para'),
                        Tab(text: 'Page'),
                        Tab(text: 'Hijb'),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50, left: 20),
                child: SvgPicture.asset('assets/images/seprator.svg'),
              ),
              const SizedBox(
                height: 10,
              ),
              Menu(
                  name1: "Al-Fatiah",
                  name2: "Verse 7",
                  nam3: "(The Opener)",
                  arbicname: "الفاتحة"),
              const Spriator(),
              const SizedBox(
                height: 30,
              ),
              Menu(
                  name1: "Al-Baqarah",
                  name2: "Verse 286",
                  nam3: "(The Cow)",
                  arbicname: "البقرة"),
              const Spriator(),
              const SizedBox(
                height: 30,
              ),
              Menu(
                  name1: "Ali-Imran",
                  name2: "Verse 200",
                  nam3: "(Family of Imran)",
                  arbicname: "  آل عمران"),
              Spriator(),
              SizedBox(
                height: 30,
              ),
              Endpage(
                onTab: () {
                  Navigator.pushNamed(context, Notification_page.id);
                },
                onTab2: () {
                  Navigator.pushNamed(context, PrayerPage.id);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
