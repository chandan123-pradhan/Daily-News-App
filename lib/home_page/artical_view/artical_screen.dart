import 'dart:async';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';



class ArticalView extends StatefulWidget {
  final String url;
  ArticalView({this.url});

  @override
  _ArticalViewState createState() => _ArticalViewState(url);
}

class _ArticalViewState extends State<ArticalView> {


  String url;

  _ArticalViewState(this.url);

  final Completer<WebViewController>_compelter=Completer<WebViewController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: IconButton(icon: Icon(Icons.arrow_back_ios,size:25,color:Colors.black), onPressed: (){
          Navigator.pop(context);
        }),
         title: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "R",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                      Text(
                        "-",
                        style: TextStyle(color: Colors.orange[900], fontSize: 20),
                      ),
                      Text(
                        "Bharat",
                        style: TextStyle(color: Colors.blue, fontSize: 20),
                      ),
                    ],
                  ),
                  actions: [
                    IconButton(icon: Icon(Icons.bookmark,size:25,color:Colors.black54), onPressed: (){

                    })
                  ],
                 
      ),
     

      body: WebView(
        initialUrl: widget.url,
        onWebViewCreated: ((WebViewController webViewController){
          _compelter.complete(webViewController);
        }),
        javascriptMode: JavascriptMode.unrestricted,
     
      )
    
    );
  }
}