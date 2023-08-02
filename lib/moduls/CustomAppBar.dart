import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  VoidCallback? onTab;
  final String leadingIcon;
  CustomAppBar({required this.title, required this.leadingIcon,this.onTab});

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color(0xffDAD0E1),
      automaticallyImplyLeading: false,
      elevation: 0,
      title: Row(
        children: [
          IconButton(
           onPressed: onTab,
            icon: SvgPicture.asset(leadingIcon),
          ),
          const SizedBox(width: 24),
          const SizedBox(width: 10),
          Text(
            title,
            style: TextStyle(
              color: Color(0xff300759),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          Spacer(),
          Container(
            width: 110,
            height: 27,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              color: const Color(0xffe5b6f2),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                  onPressed: () => {},
                  icon: SvgPicture.asset(
                    'assets/images/search-icon.svg',
                    width: 16,
                    height: 16,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
