import 'package:flutter/material.dart';
import 'package:news/home_page/category_lists.dart';

import 'package:news/model/artical_model.dart';


import '../BlogTile.dart';
import '../helper/news.dart';



class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<ArticalModel>articals=new List<ArticalModel>();

  bool isLoadding=true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    
    getNews();
  

  }



  getNews() async{
    News newsClass=News();
    await newsClass.getNews();
     articals= newsClass.news;
     setState(() {
       isLoadding=false;
     });


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   // title:Row(
      //   // mainAxisAlignment: MainAxisAlignment.center,

      //   // children: [
          // Text(
          //   "R",style:TextStyle(color:Colors.black,fontSize: 20),
          // ),
      //   //   Text(
      //   //     "Bharat",style:TextStyle(color:Colors.blue,fontSize: 20),
      //   //   ),

      //   // ],
      
      // ),
      // elevation: 0.0,
      // ),


      body: isLoadding?
      Center(
        child: Container(
          
          child:CircularProgressIndicator()
        ),
      ):
    


   Padding(
     padding: const EdgeInsets.only(top:0,left: 5,right:5),
     child: ListView.builder(
       physics: ClampingScrollPhysics(),
      
      shrinkWrap: true,
      itemCount: articals.length,
      itemBuilder: (context, index){
        return BlogTile(
          imageUrl: articals[index].urlToImage,
          title: articals[index].title,
          description:  articals[index].desciption,
          url: articals[index].url,
        );
      },
  
),
   )



// for category screen
            // Container(
            //   padding: EdgeInsets.symmetric(horizontal: 16),
            //   height:70,
            //   child:ListView.builder(
            //     scrollDirection: Axis.horizontal,
            //     shrinkWrap: true,
            //     itemCount: categories.length,
            //     itemBuilder: (context,index){
            //       return CategoryTile(
            //         imageUrl: categories[index].imageUrl,
            //         categoryName: categories[index].categoryName,
            //       );

            //   })
            // ),





          
        
      

    );
  }
}