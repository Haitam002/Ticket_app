import 'package:fluentui_icons/fluentui_icons.dart';
import 'package:flutter/material.dart';
import 'package:ticket_app/screens/home_screen.dart';
import 'package:ticket_app/screens/profile_screen.dart';
import 'package:ticket_app/screens/search_secreen.dart';
import 'package:ticket_app/screens/ticket_screen.dart';

class BottomBar extends StatefulWidget {
  const BottomBar({super.key});

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;
  //this list of icons are selected  and show the ather pages that icons provide
  static final List<Widget> _widgetOptions = <Widget>[
    const HomeScreen(),
    const SearchScreen(),
    const TicketScreen(),
    const ProfileScreen(),
  ];
//Creat a methode to basculate between the pages of bottomnavigationbar
  void _onItemTapped(int index) {
    // setState is the respossable about the satate of bottombar
    setState(() {
      _selectedIndex = index;
    });

    //to see the result in teminal
    // print('$_selectedIndex');
  }

  @override
  Widget build(BuildContext context) {
    //this scaffold return just the bottomnavigationBar and his decoration
    return Scaffold(
      body: Center(child: _widgetOptions[_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        // currentIndex make te widget know where is this current botton (buttom ih selected home or search ...)
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        //decoration of the bottom navigation bar
        elevation: 10,
        showSelectedLabels: true,
        showUnselectedLabels: true,
        selectedItemColor: Colors.blueGrey,
        unselectedItemColor: Colors.black,
        //this widget give us the permission to make the buttons  fixed(stable) or  floating..
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_home_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_home_filled),
              label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(FluentSystemIcons.ic_fluent_search_regular),
            activeIcon: Icon(FluentSystemIcons.ic_fluent_search_filled),
            label: 'Search',
          ),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_ticket_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_ticket_filled),
              label: 'Ticket'),
          BottomNavigationBarItem(
              icon: Icon(FluentSystemIcons.ic_fluent_person_regular),
              activeIcon: Icon(FluentSystemIcons.ic_fluent_person_filled),
              label: 'Profile')
        ],
      ),
    );
  }
}
