// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import './msg_page.dart';
import './home_page.dart';

// This app is a stateful, it tracks the user's current choice.

class VideoHome extends StatefulWidget {
  VideoHome({Key key}) : super(key: key);

  @override
  _VideoHomeState createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {
  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      label: '首页',
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      label: '消息',
    ),
    // BottomNavigationBarItem(
    //   backgroundColor: Colors.amber,
    //   icon: Icon(Icons.shopping_cart),
    //   label: '购物车',
    // ),
    // BottomNavigationBarItem(
    //   backgroundColor: Colors.red,
    //   icon: Icon(Icons.person),
    //   label: '个人中心',
    // ),
  ];

  final pages = [HomePage(), MsgPage()];

  int currentIndex = 0;

    
    /*切换页面*/
  void _changePage(int index) {
    /*如果点击的导航项不是当前项  切换 */
    if (index != currentIndex) {
      setState(() {
        currentIndex = index;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      home: new Scaffold(
        appBar: new AppBar(
          title: const Text('二狗子梅梅123465464'),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: bottomNavItems,
          currentIndex: currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            _changePage(index);
          },
        ),
      body: pages[currentIndex],
      ),
    );
  }

}