import 'package:flutter/material.dart';
import './swiper.dart';

class TabItem extends StatefulWidget {
  TabItem({Key key}) : super(key: key);

  @override
  _TabItemState createState() => _TabItemState();
}

class _TabItemState extends State<TabItem> {
  @override
  Widget build(BuildContext context) {
    String str = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";

    return ListView(
        padding: EdgeInsets.all(10),
        scrollDirection: Axis.vertical,
        children: [
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
          Text(
            '今日推荐',
            style: TextStyle(
              color: Colors.red,
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          GridView.builder(
            // 不加这个会，报错不知道什么鬼
            shrinkWrap: true,
            // 嵌套在listView 里面，不做这个处理，会无法滚动哦
            /*
            physics 参数具体意思
            同 ListView，设置 GridView 如何响应用户的滑动行为，值为一个 ScrollPhysics 对象，它的实现类
            AlwaysScrollableScrollPhysics：总是可以滑动。
            NeverScrollableScrollPhysics：禁止滚动。
            BouncingScrollPhysics：内容超过一屏，上拉有回弹效果。
            ClampingScrollPhysics：包裹内容，不会有回弹，感觉跟 AlwaysScrollableScrollPhysics 差不多。
          */
            physics: new NeverScrollableScrollPhysics(),
            gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
              //SliverGridDelegateWithFixedCrossAxisCount可以直接指定每行（列）显示多少个Item   SliverGridDelegateWithMaxCrossAxisExtent会根据GridView的宽度和你设置的每个的宽度来自动计算没行显示多少个Item
              //横轴的最大长度
              // maxCrossAxisExtent:250,
              crossAxisCount: 2,
              //主轴间隔
              mainAxisSpacing: 10.0,
              //横轴间隔
              crossAxisSpacing: 10.0,
              // 来是通过宽高比属性childAspectRatio控制，默认宽高比1：1
              childAspectRatio: 0.7,
            ),
            itemCount: 100,
            itemBuilder: (BuildContext context, int index) {
              return Column(
                children: [
                  Image.network(
                    'https://i03piccdn.sogoucdn.com/844d4f799ace76bd',
                    fit: BoxFit.cover,
                    width: 200,
                    height: 200,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了ask的房間裏阿三地方了',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(color: Colors.grey, fontSize: 12),
                  )
                ],
              );
            },
          )
        ]);
  }
}

class GridViewItem extends StatelessWidget {
  GridViewItem({this.cover, this.title, this.time});
  String cover;
  String title;
  String time;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          GridViewTitleCover(this.cover),
          SizedBox(height: 10),
          GridViewItemTitle(title: this.title),
          GridViewItemTime(time: this.time)
        ],
      ),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(6)),
          color: Colors.grey[200]),
    );
  }
}

class GridViewTitleCover extends StatelessWidget {
  GridViewTitleCover(this.cover);

  final String cover;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 150,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.vertical(top: Radius.circular(6)),
          image: DecorationImage(
              image: NetworkImage(this.cover), fit: BoxFit.cover),
        ));
  }
}

class GridViewItemTitle extends StatelessWidget {
  GridViewItemTitle({this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.title,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(fontSize: 12),
      ),
      padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
    );
  }
}

class GridViewItemTime extends StatelessWidget {
  GridViewItemTime({this.time});

  final String time;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Text(
        this.time,
        maxLines: 1,
        style: TextStyle(fontSize: 10, color: Colors.black38),
      ),
      alignment: Alignment.bottomRight,
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
    );
  }
}
