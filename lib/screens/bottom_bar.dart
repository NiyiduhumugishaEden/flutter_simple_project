import 'package:school_flutter_app/screens/interset_screen.dart';
import 'package:school_flutter_app/screens/educationwork.dart';
import 'package:school_flutter_app/screens/educationwork2.dart';
import 'package:school_flutter_app/screens/profile_screen.dart';
import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class BottomBar extends StatefulWidget {
  const BottomBar({Key? key}) : super(key: key);

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex=0;
  static final List<Widget>_widgetOptions =<Widget>[
    // const HomeScreen(),
    // const ChatScreen(),
    // const MainScreen(),
    // const VideoScreen(),
    // const ProfilePage()

    const MyInterestsPage(),
    const EducationAndWorkPage(),
    const EducationAndWorkPage2(),
    const VideoScreen(),
    const ProfilePage()



  ];
  void _onItemTapped(int index){
    setState(() {
      _selectedIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center (
         child : _widgetOptions[_selectedIndex],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        elevation: 10,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: const Color(0xFF526480),
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_home_add_regular),
                activeIcon:Icon(FluentSystemIcons.ic_fluent_home_filled),
                label:"Home"),

          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_apps_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_apps_filled),
              label:"Main"),

          BottomNavigationBarItem(
               icon: Icon(FluentSystemIcons.ic_fluent_chat_regular),
              activeIcon:Icon(FFluentSystemIcons.ic_fluent_chat_filled),
              label:"Chatrooms"),

          BottomNavigationBarItem(
               icon: Icon(FluentSystemIcons.ic_fluent_video_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_video_filled),
              label:"Videos"),

          BottomNavigationBarItem(icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon:Icon(FluentSystemIcons.ic_fluent_person_filled),
              label:"profile"),
        ],
      ),
    );
  }
}

