import 'package:flutter/material.dart';

class GetRecommendTemplate extends StatefulWidget {
  GetRecommendTemplate({Key key}) : super(key: key);

  @override
  _GetRecommendTemplate createState() => _GetRecommendTemplate();
}

class _GetRecommendTemplate extends State<GetRecommendTemplate> {
  @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     children: <Widget>[
  //       Text('今日推荐'),
  //       ListView.builder(
  //         padding: EdgeInsets.all(8),
  //         itemCount: 10,
  //         itemBuilder: (BuildContext context, int index) {
  //           return Column(
  //             children:<Widget>[
  //               Image.network(
  //                 'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1794597811,985734249&fm=11&gp=0.jpg',
  //                 fit: BoxFit.cover,
  //                 ),
  //               Text('来呀，快活呀')
  //             ],
  //           );
  //         }
  //       ),
  //     ]
  //   );
  // }
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.all(8),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children:<Widget>[
            Image.network(
              'https://dss0.bdstatic.com/70cFuHSh_Q1YnxGkpoWK1HF6hhy/it/u=1794597811,985734249&fm=11&gp=0.jpg',
              fit: BoxFit.cover,
              ),
            Text('来呀，快活呀')
          ],
        );
      }
    );
  }
}