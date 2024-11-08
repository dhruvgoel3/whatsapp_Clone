import 'package:flutter/material.dart';
import 'package:whatsapp/CallPage/calls.dart';
import 'package:whatsapp/ChatPage/chats.dart';
import 'package:whatsapp/CommunityPage/communities.dart';
import 'package:whatsapp/UpdatePage/updates.dart';

class BottomBar extends StatefulWidget {
  const BottomBar();
  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  final PageController _pageViewController = PageController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageViewController,
        onPageChanged: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        children: [
          ChatPage(),
          Updates(),
          Communities(),
          Calls(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 25,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,
        currentIndex: _selectedIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
          _pageViewController.jumpToPage(index);
        },
        backgroundColor: Color(0xff0a131a),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            backgroundColor: Color(0xff0a131a),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.update),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people_outline),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined),
            label: 'Calls',
          ),
        ],
      ),
    );
  }
}
