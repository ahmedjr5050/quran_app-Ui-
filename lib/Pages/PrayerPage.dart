import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app2/Pages/InnerPage.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:quran_app2/moduls/CustomAppBar.dart';

class PrayerPage extends StatefulWidget {
  static String id = 'PrayerPage';

  const PrayerPage({super.key});
  @override
  State<PrayerPage> createState() => _PrayerPageState();
}

class _PrayerPageState extends State<PrayerPage> {
  CalendarFormat _calendarFormat = CalendarFormat.month;
  DateTime _selectedDay = DateTime.now();
  DateTime _focusedDay = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDAD0E1),
      appBar: CustomAppBar(
        onTab: () {
          Navigator.pushNamed(context, InnerPage.id);
        },
        title: "Prayer",
        leadingIcon: 'assets/images/return.svg',
      ),
      body: SingleChildScrollView(
        // Wrap the content in SingleChildScrollView
        child: Column(
          // Use Column to arrange the content vertically
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: AppBar().preferredSize.height + 1),
            Container(
              width: 296,
              height: 350,
              color: const Color(0xffE5B6F2),
              child: TableCalendar(
                firstDay: DateTime.utc(2021, 1, 1),
                lastDay: DateTime.utc(2023, 12, 31),
                focusedDay: _focusedDay,
                selectedDayPredicate: (day) {
                  return isSameDay(_selectedDay, day);
                },
                calendarFormat: _calendarFormat,
                onFormatChanged: (format) {
                  setState(() {
                    _calendarFormat = format;
                  });
                },
                onPageChanged: (focusedDay) {
                  setState(() {
                    _focusedDay = focusedDay;
                  });
                },
                onDaySelected: (selectedDay, focusedDay) {
                  setState(() {
                    _selectedDay = selectedDay;
                    _focusedDay = focusedDay;
                  });
                },
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 296,
              height: 80,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color(0xffe5b6f2),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      children: [
                        Text("Fajr",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff300759),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5:55am',
                          style:
                              TextStyle(color: Color(0xff484848), fontSize: 12),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Fajr",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff300759),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5:55am',
                          style:
                              TextStyle(color: Color(0xff484848), fontSize: 12),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Text("Fajr",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff300759),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5:55am',
                          style:
                              TextStyle(color: Color(0xff484848), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 30),
                    child: Row(
                      children: [
                        Text("Magrib",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff300759),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5:55am',
                          style:
                              TextStyle(color: Color(0xff484848), fontSize: 12),
                        ),
                        SizedBox(
                          width: 55,
                        ),
                        Text("Isha",
                            style: TextStyle(
                                fontSize: 12,
                                color: Color(0xff300759),
                                fontWeight: FontWeight.bold)),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          '5:55am',
                          style:
                              TextStyle(color: Color(0xff484848), fontSize: 12),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Container(
              width: 296,
              height: 65,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(20),
                  bottomRight: Radius.circular(20),
                ),
                color: Color(0xffe5b6f2),
              ),
              child: Column(
                children: [
                  SizedBox(height: 3),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20,
                      top: 5,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Direction',
                          style: TextStyle(
                              color: Color(0xff300759),
                              fontSize: 14,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 160,
                        ),
                        IconButton(
                          onPressed: (() => {}),
                          icon: SvgPicture.asset(
                            'assets/images/messanger.svg',
                            width: 24,
                            height: 24,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 54),
                  child: Container(
                    width: 48,
                    height: 48,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(80),
                      color: Color(0xffE5B6F2),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/Group 2.svg',
                        height: 30,
                        width: 30,
                      ),
                    ),
                  ),
                ),
                Spacer(),
                Container(
                  width: 48,
                  height: 48,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(80),
                    color: Color(0xffE5B6F2),
                  ),
                  child: Center(
                    child: SvgPicture.asset(
                      'assets/images/quran button.svg',
                      height: 40,
                      width: 40,
                    ),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: const EdgeInsets.only(right: 44),
                  child: Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                    ),
                    child: Center(
                      child: SvgPicture.asset(
                        'assets/images/mosque button.svg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
