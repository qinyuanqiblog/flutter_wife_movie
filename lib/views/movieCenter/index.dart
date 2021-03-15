// Copyright 2017 The Chromium Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:flutter_sample/widget/bottom_nav/cart_page.dart';
import 'package:flutter_sample/widget/bottom_nav/home_page.dart';
import 'package:flutter_sample/widget/bottom_nav/msg_page.dart';
import 'package:flutter_sample/widget/bottom_nav/person_page.dart';

// This app is a stateful, it tracks the user's current choice.
class VideoHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _VideoHomeState();
}

class _VideoHomeState extends State<VideoHome> {

  final List<BottomNavigationBarItem> bottomNavItems = [
    BottomNavigationBarItem(
      backgroundColor: Colors.blue,
      icon: Icon(Icons.home),
      title: Text("首页"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.green,
      icon: Icon(Icons.message),
      title: Text("消息"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.amber,
      icon: Icon(Icons.shopping_cart),
      title: Text("购物车"),
    ),
    BottomNavigationBarItem(
      backgroundColor: Colors.red,
      icon: Icon(Icons.person),
      title: Text("个人中心"),
    ),
  ];

  final pages = [HomePage(), MsgPage()];

  int currentIndex;

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
          type: BottomNavigationBarType.shifting,
          onTap: (index) {
            _changePage(index);
          },
        ),
      body: pages[currentIndex],
      //   body: SingleChildScrollView(
      //   child: Column(
      //     children: <Widget>[
      //       Container(
      //         height: 175,
      //         child: GetSwiperTemplate(),
      //       ),
      //     ],
      //   ),
      // ),
      ),
    );
  }
}

class GetSwiperTemplate extends StatefulWidget {
  GetSwiperTemplate({Key key}) : super(key: key);

  @override
  _GetSwiperTemplateState createState() => _GetSwiperTemplateState();
}

class _GetSwiperTemplateState extends State<GetSwiperTemplate> {
   List<Image> imgs = [
    //建立了一个图片数组
    Image.network(
      "https://images.unsplash.com/photo-1477346611705-65d1883cee1e?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1498550744921-75f79806b8a7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80",
      fit: BoxFit.cover,
    ),
    Image.network(
      "https://images.unsplash.com/photo-1451187580459-43490279c0fa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=500&q=60",
      fit: BoxFit.cover,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Swiper(
      itemBuilder: (BuildContext context, int index) {
        return imgs[index];
      },
      itemCount: imgs.length,
      autoplay: true,
      pagination: new SwiperPagination(),
      control: new SwiperControl(),
      viewportFraction: 0.8,
      scale: 0.9,
    );
  }
}

