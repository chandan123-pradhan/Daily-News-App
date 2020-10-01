import 'package:flutter/material.dart';

import '../busines_news/business_news.dart';

class AllTabsHomeScreen extends StatefulWidget {
  @override
  _AllTabsHomeScreenState createState() => _AllTabsHomeScreenState();
}

class _AllTabsHomeScreenState extends State<AllTabsHomeScreen> {
  @override
  Widget build(BuildContext context) {

       final GlobalKey<ScaffoldState> _scaffoldKey =
        new GlobalKey<ScaffoldState>();

   

    return DefaultTabController(
        length: 4,
        child: Scaffold(


          
        key: _scaffoldKey,
        drawer: Padding(
          padding: const EdgeInsets.only(top: 23),
          child: new Container(
              width: MediaQuery.of(context).size.width / 1.3,
              child: Drawer(

              )),
        ),



          
         appBar: AppBar(

           leading: IconButton(
                  icon: Icon(Icons.menu,size:25,color:Colors.black54),
                  onPressed: () => _scaffoldKey.currentState.openDrawer(),
                ),


                actions: [
                  IconButton(
                  icon: Icon(Icons.search,size:25,color:Colors.black54),
                  onPressed: (){

                  }
                ),
                ],
           
                  //expandedHeight: 70,
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
                 
                  backgroundColor: Colors.white,
                 
                  bottom: PreferredSize(
                    preferredSize: Size.fromHeight(10.0),
                                      child: TabBar(
                        indicatorColor: Colors.black45,
                        labelColor: Colors.black,
                        unselectedLabelColor: Colors.black45,
                        isScrollable: true,
                        tabs: [
                          Text("Business"),
                          Text("EnterTainment"),
                          Text("General"),
                          Text("Health"),
                        ]),
                  ),
                ),
               
              
            
            body: TabBarView(
              children: [
                HomePage(),
                Text("empty"),
                Text("empty"),
                Text("empty")
              ],
            ),
        
        )
          
        );
  }
}
