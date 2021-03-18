import 'package:flutter/material.dart';

class GetRecommendTemplate extends StatefulWidget {
  GetRecommendTemplate({Key key}) : super(key: key);

  @override
  _GetRecommendTemplate createState() => _GetRecommendTemplate();
}

class _GetRecommendTemplate extends State<GetRecommendTemplate> {
  @override
  Widget build(BuildContext context) {
    // ignore: deprecated_member_use
    qq(){
      List<Widget> children = [];
      var i =0;
      while (i<10) {
        children.add(
          Row(
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
            ))
          ],
        )
        );

        i++;
      }
      return Column(
        children:children,
      );
    }
  }
}