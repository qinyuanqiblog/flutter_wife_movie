
import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';


class MsgPage extends StatefulWidget {
  MsgPage({Key key}) : super(key: key);

  @override
  _MsgPageState createState() => _MsgPageState();
}

class _MsgPageState extends State<MsgPage> {
  @override
  Widget build(BuildContext context) {
    return InAppWebView(
      // initialUrl: 'http://www.mp4ba.cc/',
      // initialUrl: 'https://m.v.qq.com/',
      // url: 'https://main.m.taobao.com/',
      //  initialUrlRequest:URLRequest(url: Uri.parse("https://main.m.taobao.com/"))
       initialUrlRequest:URLRequest(url: Uri.parse("https://m.v.qq.com/"))
    );
  }
}
