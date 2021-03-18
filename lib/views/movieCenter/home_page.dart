import 'package:flutter/material.dart';
import '../../widgets/swiper.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  //  Widget build(BuildContext context) {
  //   return Material(
  //     child: CustomScrollView(
  //       slivers: <Widget>[

  //         SliverPadding(
  //           padding: const EdgeInsets.all(8.0),
  //           sliver: new SliverGrid( //Grid
  //             gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
  //               crossAxisCount: 2, //Grid按两列显示
  //               mainAxisSpacing: 10.0,
  //               crossAxisSpacing: 10.0,
  //               childAspectRatio: 4.0,
  //             ),
  //             delegate: new SliverChildBuilderDelegate(
  //                   (BuildContext context, int index) {
  //                 //创建子widget
  //                 return new Container(
  //                   alignment: Alignment.center,
  //                   color: Colors.cyan[100 * (index % 9)],
  //                   child: new Text('grid item $index'),
  //                 );
  //               },
  //               childCount: 20,
  //             ),
  //           ),
  //         ),
  //         //List
  //         new SliverFixedExtentList(
  //           itemExtent: 50.0,
  //           delegate: new SliverChildBuilderDelegate(
  //                   (BuildContext context, int index) {
  //                 //创建列表项
  //                 return new Container(
  //                   alignment: Alignment.center,
  //                   color: Colors.lightBlue[100 * (index % 9)],
  //                   child: new Text('list item $index'),
  //                 );
  //               },
  //               childCount: 50 //50个列表项
  //           ),
  //         ),
  //       ],
  //     ),
  //   );
  // }

  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    return SingleChildScrollView(
      padding: EdgeInsets.all(16.0),
      child: Center(
        child: Column(children: [
          SizedBox(
            height: 20,
          ),
          Container(
            height: 175,
            child: GetSwiperTemplate(),
          ),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Expanded(
                child: Text(
                  '今日推荐',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.red,
                  ),
                ),
              ),
            ],
          ),
          Row(
            children: [
              Expanded(
                child: Container(
                    height: 250,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: 10,
                      itemBuilder: (BuildContext context, int index) {
                        return Column(
                          children: [
                            Image.network(
                              'https://i03piccdn.sogoucdn.com/844d4f799ace76bd',
                              fit: BoxFit.cover,
                              width: 200,
                              height: 200,
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            Text('搞死你呀的')
                          ],
                        );
                      },
                    )),
              )
            ],
          ),
          Column(
            children: <Widget>[
              Container(
                height: 200,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 3, //每行三列
                        childAspectRatio: 1.0 //显示区域宽高相等
                        ),
                    itemCount: 20,
                    itemBuilder: (context, index) {
                      return Image.network(
                        'https://i03piccdn.sogoucdn.com/844d4f799ace76bd',
                        fit: BoxFit.cover,
                        width: 200,
                        height: 200,
                      );
                    }),
              ),
            ],
          ),
        ]),
      ),
    );

    return Scrollbar(
      // 显示进度条
      child: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Center(
          child: Column(
            //动态创建一个List<Widget>
            children: str
                .split("")
                //每一个字母都用一个Text显示,字体为原来的两倍
                .map((c) => Image.network(
                      'https://i03piccdn.sogoucdn.com/844d4f799ace76bd',
                      fit: BoxFit.cover,
                      width: 200,
                      height: 200,
                    ))
                .toList(),
          ),
        ),
      ),
    );
  }
}
