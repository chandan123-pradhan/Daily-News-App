import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'artical_view/artical_screen.dart';



class BlogTile extends StatelessWidget {
  final String  imageUrl,title,description,url;


BlogTile({@required this.imageUrl,this.description,this.title,@required this.url});


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:10,bottom: 16),
      child: GestureDetector(
        onTap: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>ArticalView(
            url: url,

          )));
        },
              child: Container(
            decoration: BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(
   5
    ),
    boxShadow: [
        BoxShadow(
          color: Colors.grey.withOpacity(0.5),
          spreadRadius: 1.1,
          blurRadius: 3,
          offset: Offset(0, 3), // changes position of shadow
        ),
    ],
  ),
          child:Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(6),
                
                child: Image.network(imageUrl)),
              SizedBox(height:8),
              Text(title,style:TextStyle(color:Colors.black,fontWeight:FontWeight.w600,fontSize:18)),
              SizedBox(height:8),
              Text(description,
              style:TextStyle(color:Colors.black54,fontWeight:FontWeight.bold,fontSize:12)

              ),
              SizedBox(height:5),
            ],
          )
        ),
      ),
    );
  }
}