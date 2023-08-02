import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

// ignore: must_be_immutable
class Endpage extends StatelessWidget {
  Endpage({this.onTab,this.onTab2});
  VoidCallback? onTab;
  VoidCallback? onTab2;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
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
        Spacer(),
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(100),
            color: Color(0xff300759),
          ),
          child: Center(
            child: GestureDetector(
              onTap: onTab,
              child: SvgPicture.asset(
                'assets/images/Group 3.svg',
                height: 40,
                width: 40,
              ),
            ),
          ),
        ),
        Spacer(),
        Padding(
          padding: const EdgeInsets.only(right: 40),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(100),
              color: Color(0xffE5B6F2),
            ),
            child: Center(
              child: GestureDetector(
                onTap: onTab2,
                child: SvgPicture.asset(
                  'assets/images/Group 4.svg',
                  height: 30,
                  width: 30,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
