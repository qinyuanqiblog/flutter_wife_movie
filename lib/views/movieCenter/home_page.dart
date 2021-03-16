import 'package:flutter/material.dart';
import '../../widgets/swiper.dart';
import '../../widgets/recommend.dart';

class HomePage extends StatefulWidget {
  HomePage({Key key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
          padding: EdgeInsets.all(8),
          itemCount: 50,
          itemBuilder: (BuildContext context, int index) {
            return Row(
              children:<Widget>[
                Image.network(
                  'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1794597811,985734249&fm=11&gp=0.jpg',
                  fit: BoxFit.cover,
                  width:200,
                  height: 200,
                  ),
                  Expanded(child:  Text(
                  '来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀来呀，快活呀',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 2,
                ),)
              ],
            );
          }
        );
    // return Wrap(
    //   children: [
    //     SizedBox(
    //       height:20,
    //     ),
    //     Container(
    //       height:175,
    //       child: GetSwiperTemplate(),
    //     ),
    //     SizedBox(
    //       height:20,
    //     ),
    //   ],
    // );
    
  }
}