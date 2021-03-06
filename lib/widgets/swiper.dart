import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
                  //条目构建函数传入了index,根据index索引到特定图片
                  return imgs[index];
                },
                itemCount: imgs.length,
                autoplay: true,
                pagination: new SwiperPagination(), //这些都是控件默认写好的,直接用
                control: new SwiperControl(),
              );
  }
}
