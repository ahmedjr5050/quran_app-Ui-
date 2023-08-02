import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:quran_app2/moduls/CustomContainer.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffDAD0E1),
      appBar: AppBar(
        backgroundColor: Color(0xffDAD0E1),
        automaticallyImplyLeading: false,
        elevation: 0,
        title: Row(
          children: [
            IconButton(
              onPressed: () => {},
              icon: SvgPicture.asset('assets/images/return.svg'),
            ),
            const SizedBox(width: 24),
            const SizedBox(width: 10),
            Text(
              "Settings",
              style: TextStyle(
                color: Color(0xff300759),
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            Spacer(),
            IconButton(
              onPressed: () => {},
              icon: SvgPicture.asset(
                'assets/images/Edit.svg',
                width: 26,
                height: 26,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          CustomConatiner(textOfContainer: "Account"),
          Spacer(
            flex: 2,
          ),
          CustomConatiner(textOfContainer: "Notification"),
          Spacer(
            flex: 2,
          ),
          CustomConatiner(textOfContainer: "Privacy & Security"),
          Spacer(
            flex: 2,
          ),
          CustomConatiner(textOfContainer: "Help & Support"),
          Spacer(
            flex: 2,
          ),
          CustomConatiner(textOfContainer: "About"),
          Spacer(
            flex: 7,
          ),
        ],
      ),
    );
  }
}
