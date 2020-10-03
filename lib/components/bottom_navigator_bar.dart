import 'package:dingoprototype/screen/announcement_page.dart';
import 'package:flutter/material.dart';
import 'package:dingoprototype/screen/chat_room.dart';
import 'package:dingoprototype/screen/main_page.dart';
import 'package:dingoprototype/screen/settings_page.dart';

class BottomNavigatorBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: false,
      showUnselectedLabels: false,
      onTap: (idx) {
        switch (idx) {
          case 0:
            Navigator.pushNamed(
              context,
              MainPage.id,
            );
            break;
          case 1:
            Navigator.pushNamed(
              context,
              ChatRoom.id,
            );
            break;
          case 2:
            Navigator.pushNamed(
              context,
              AnnouncementPage.id,
            );
            break;
          case 3:
            Navigator.pushNamed(
              context,
              SettingsPage.id,
            );
            break;
        }
      },
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          title: Text(
            "home",
          ),
          icon: Image.asset(
            'images/home.png',
            height: 35.0,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            "message",
          ),
          icon: Image.asset(
            'images/message.png',
            height: 35.0,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            "calendar",
          ),
          icon: Image.asset(
            'images/daily.png',
            height: 35.0,
          ),
        ),
        BottomNavigationBarItem(
          title: Text(
            "menu",
          ),
          icon: Image.asset(
            'images/others.png',
            height: 35.0,
          ),
        ),
      ],
    );
  }
}
