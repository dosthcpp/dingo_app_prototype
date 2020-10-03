import 'package:dingoprototype/screen/agreement_management.dart';
import 'package:dingoprototype/screen/chat_room.dart';
import 'package:dingoprototype/screen/find_id_and_passwd.dart';
import 'package:dingoprototype/screen/gov_business.dart';
import 'package:dingoprototype/screen/main_page_alternative.dart';
import 'package:dingoprototype/screen/registration_page.dart';
import 'package:dingoprototype/screen/announcement_page.dart';
import 'package:dingoprototype/screen/my_page.dart';
import 'package:dingoprototype/screen/main_page.dart';
import 'package:dingoprototype/screen/settings_page.dart';
import 'package:dingoprototype/screen/starting_page.dart';
import 'package:dingoprototype/screen/my_page_alternative.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: MainPageAlternative.id,
      routes: {
        StartingPage.id : (context) => StartingPage(),
        MainPage.id : (context) => MainPage(),
        RegistrationPage.id : (context) => RegistrationPage(),
        FindIdAndPasswd.id : (context) => FindIdAndPasswd(),
        MyPage.id : (context) => MyPage(),
        MyPageAlternative.id: (context) => MyPageAlternative(),
        MainPageAlternative.id : (context) => MainPageAlternative(),
        ChatRoom.id : (context) => ChatRoom(),
        GovBusiness.id : (context) => GovBusiness(),
        AnnouncementPage.id : (context) => AnnouncementPage(),
        AgreementManagement.id : (context) => AgreementManagement(),
        SettingsPage.id : (context) => SettingsPage(),
      },
    );
  }
}