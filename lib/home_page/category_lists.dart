import 'package:flutter/material.dart';


class CategoryTile extends StatelessWidget {
  final imageUrl,categoryName;
  CategoryTile({this.imageUrl,this.categoryName});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        print("hii");
      },
          child: Container(
        margin: EdgeInsets.only(right:10),
        child:Stack(
          children: [
            ClipRRect(child: Image.network(imageUrl,width: 120,height:80,fit: BoxFit.cover,),
            borderRadius: BorderRadius.circular(6),
            ),
            Container(
              width: 120,height:80,
              alignment: Alignment.center,
              


             decoration: BoxDecoration(
                color:Colors.black26,
                borderRadius: BorderRadius.circular(6)
                
             ),
              child: Text(categoryName,style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold,fontSize:14),),
            )
          ],
        )
      ),
    );
  }
}