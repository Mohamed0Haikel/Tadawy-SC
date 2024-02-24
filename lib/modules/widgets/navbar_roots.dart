import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tdaway/modules/ehr_screen.dart';
import 'package:tdaway/modules/home_screen.dart';
import 'package:tdaway/modules/messages_screen.dart';
import 'package:tdaway/modules/settings_screen.dart';
import 'package:tdaway/modules/schedule_screen.dart';
import 'package:tdaway/modules/tests_analysis_screen.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:icon_decoration/icon_decoration.dart';

class NavBarRoots extends StatefulWidget {
  @override
  State<NavBarRoots> createState() => _NavBarRootsState();
}

class _NavBarRootsState extends State<NavBarRoots> {
  int _selectedIndex = 0;
  final _screens = [
    HomeScreen(),
    MessagesScreen(),
    const TestAnalysisScreen(),
    EHRScreen(),
    // ToolScreen(),
    ScheduleScreen(),
    SettingScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: CurvedNavigationBar(
          // backgroundColor: Colors.white,
          // color: Theme.of(context).colorScheme.onPrimaryContainer,
          backgroundColor: Colors.white,
          color: Theme.of(context).colorScheme.onPrimaryContainer,

          //Theme.of(context).colorScheme.onPrimaryContainer
          //Theme.of(context).colorScheme.primary
          //Colors.white
          // type: BottomNavigationBarType.fixed,
          // selectedItemColor: Theme.of(context).colorScheme.primary,
          // unselectedItemColor: Colors.black26,
          // selectedLabelStyle: TextStyle(
          //   fontWeight: FontWeight.bold,
          //   fontSize: 15,
          // ),
          index: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: <Widget>[
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Icon(Icons.home_filled),
            //     Text("Home"),
            //   ],
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //    Icon(CupertinoIcons.chat_bubble_text_fill,),
            //    label: "Messages",
            //   ],
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //    Icon(Icons.monitor_heart_outlined),
            //    label: "Tests",
            //   ],
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //    Icon(CupertinoIcons.rectangle_stack_fill_badge_person_crop),
            //    label: "EHR",
            //   ],
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //    Icon(Icons.calendar_month_outlined),
            //    label: "Schedule",
            //   ],
            // ),
            // Column(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //    Icon(Icons.menu_outlined),
            //label: "Settings",
            //   ],
            // ),

            DefultIcon(
              icon: Icons.home_filled,
            ),
            DefultIcon(
              icon: CupertinoIcons.chat_bubble_text_fill,
            ),
            DefultIcon(
              icon: Icons.monitor_heart_outlined,
            ),
            DefultIcon(
              icon: CupertinoIcons.rectangle_stack_fill_badge_person_crop,
            ),
            DefultIcon(
              icon: Icons.calendar_month_outlined,
            ),
            DefultIcon(
              icon: Icons.menu_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
class DefultIcon extends StatelessWidget {
  DefultIcon({super.key, required this.icon});
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return DecoratedIcon(
    icon: Icon(
      icon,
      color: Colors.white,
    ),
    decoration: IconDecoration(
      border: IconBorder(
        color: Theme.of(context).colorScheme.onTertiary,
        width: 2.5,
      ),
    ),
  );
  }
}


// BottomNavigationBar(
//           backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
//           type: BottomNavigationBarType.fixed,
//           selectedItemColor: Theme.of(context).colorScheme.primary,
//           unselectedItemColor: Colors.black26,
//           selectedLabelStyle: TextStyle(
//             fontWeight: FontWeight.bold,
//             fontSize: 15,
//           ),
//           currentIndex: _selectedIndex,
//           onTap: (index) {
//             setState(() {
//               _selectedIndex = index;
//             });
//           },
//           items: const [
//             BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
//             BottomNavigationBarItem(icon: Icon(CupertinoIcons.chat_bubble_text_fill,), label: "Messages"),
//             BottomNavigationBarItem(icon: Icon(Icons.monitor_heart_outlined), label: "Tests",),
//             BottomNavigationBarItem(icon: Icon(CupertinoIcons.rectangle_stack_fill_badge_person_crop), label: "EHR",),
//             BottomNavigationBarItem(icon: Icon(Icons.calendar_month_outlined), label: "Schedule",),
//             BottomNavigationBarItem(icon: Icon(Icons.menu_outlined), label: "Settings",),
//           ],
//         ),
