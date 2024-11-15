
import 'package:flutter/material.dart';
import 'package:whatsapp/AllAppUI/CallPage/calls.dart';
import 'package:whatsapp/AllAppUI/ChatPage/chats.dart';
import 'package:whatsapp/AllAppUI/CommunityPage/communities.dart';
import 'package:whatsapp/AllAppUI/UpdatePage/updates.dart';
import 'package:whatsapp/bottombar.dart';


double bigScreenWidth = 640.0;

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
    var screenWidth = MediaQuery.of(context).size.width;
    if (screenWidth > bigScreenWidth) {
      return Scaffold(
        body: Row(
          children: [
            NavigationRail(destinations: const [
              NavigationRailDestination(
                icon: Icon(Icons.chat),
                label: Text('Chats'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.update),
                label: Text('Updates'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.people_outline),
                label: Text('Communities'),
              ),
              NavigationRailDestination(
                icon: Icon(Icons.call_outlined),
                label: Text('Calls'),
              ),
            ], selectedIndex: _selectedIndex,
              
              onDestinationSelected: (index) {
                setState(() {
                  _selectedIndex = index;
                });
                _pageViewController.jumpToPage(index);
              },
            backgroundColor: Color(0xff0a131a),

            ),
            Expanded(
              child: PageView(
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
            ),
          ],
        ),
      );
    } else {
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
        bottomNavigationBar: Container(
          child: BottomNavigationBar(
            iconSize: 25,
            selectedItemColor: Colors.green,
            unselectedItemColor: Colors.white60,
            currentIndex: _selectedIndex,
            type: BottomNavigationBarType.fixed,
            onTap: (index) {
              setState(() {
                _selectedIndex = index;
              });
              _pageViewController.jumpToPage(index);
            },
            backgroundColor: const Color(0xff0a131a),
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
        ),
      );
    }

  }
}
