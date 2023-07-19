
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'follow_info.dart';
import 'main_header.dart';
import 'main_tab.dart';
import 'main_tab_button.dart';

class MainPage extends StatelessWidget{
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: Column(
        children: [
          const SizedBox(height: 20),
          MainHeader(),
          const SizedBox(height: 20),
          FollowInfo(),

          Expanded(child:MainTab()),
        ],
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.deepPurpleAccent,
      title: Text('마이페이지',style: TextStyle(color: Colors.white)),
      centerTitle: false,
      elevation: 1.0,
      actions: const [
        Icon(
          CupertinoIcons.bell,
          color: Colors.white,
        ),
        SizedBox(width: 15),
        Icon(
          CupertinoIcons.settings_solid,
          color: Colors.white,
        ),
        SizedBox(width: 15),
      ],
    );
  }
}

class _buildBottomNav extends StatelessWidget {
  const _buildBottomNav({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showSelectedLabels: true,
      showUnselectedLabels: true,
      currentIndex: 4,
      backgroundColor: Colors.grey[100],
      selectedItemColor: Colors.deepPurpleAccent,
      unselectedItemColor: Colors.black54,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.home),
          label: "HOME",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.chat_bubble),
          label: "채팅",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.add),
          label: "글쓰기",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.search),
          label: "검색",
        ),
        BottomNavigationBarItem(
          icon: Icon(CupertinoIcons.person),
          label: "MY",
        ),
      ],

    );
  }
}