import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:wallpaper/app_containst.dart';

class WallpaperPage extends StatelessWidget
{   TextEditingController wallcantroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:SingleChildScrollView(
        child: Column(children: [
          Container(height:400,width: double.infinity,padding: EdgeInsets.symmetric(horizontal: 20),
            //color: Colors.orange,
            margin: EdgeInsets.only(top: 30),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(children: [
                  TextField(controller: wallcantroller,
                    decoration: InputDecoration(hintText: "Find Wallpaper....",suffix:Icon(Icons.search,size: 30,color: Colors.black,),
                      hintStyle: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,),
                      enabledBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(30),
                      borderSide: BorderSide(width: 2),
                      ),
                    ),
                  )
                ],),
                SizedBox(height: 25,),
                Column(children: [
                  Text("Best of the month",style: TextStyle(fontWeight: FontWeight.bold,
                fontSize: 25,
                ),
                )],),
                SizedBox(height: 20,),
                Container(height: 250,width: double.infinity,
                 // color: Colors.pink,
                  margin: EdgeInsets.symmetric(horizontal: 20),
                  child: ListView.builder(itemCount: Portrait.wall.length,
                      scrollDirection:Axis.horizontal,
                      itemBuilder: (_,index)
                      {
                        return Container(height:300,width:150,//color: Colors.lightBlueAccent,
                          margin: EdgeInsets.symmetric(horizontal: 20),
                          decoration: BoxDecoration(image:DecorationImage(
                          image: AssetImage(Portrait.wall[index]['WallPaper'] ?? "Default"),fit: BoxFit.cover),
                          borderRadius: BorderRadius.circular(20),
                        )
                        );
                      }
                  ),
                ),
              ],
               ),
          ),
          Container(height: 450,padding: EdgeInsets.symmetric(horizontal: 20),
            width: double.infinity,
            //color: Colors.blueGrey,
              margin: EdgeInsets.only(top: 5),
             child:
             Column(crossAxisAlignment: CrossAxisAlignment.start,
               children: [
                 Text("The color tone",style: TextStyle(fontSize: 25,
                     fontWeight: FontWeight.bold),),
                 SizedBox(height: 10,),
                 Container(height: 100,width:double.infinity,//color: Colors.yellow,
                  child:    Container(
                    child: ListView.builder(itemCount: ColorPage.kamal.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (_,index)
                        {
                          return Container(height: 100,width: 100,
                            margin: EdgeInsets.symmetric(horizontal: 15),
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(21),
                              color:ColorPage.kamal[index]['WallPaper'],),
                          );
                        }),
                  )
                 ),
                 SizedBox(height: 10,),
                 Text("Categories",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25),),
                 SizedBox(height: 10,),
                 Container(height: 230,
                   child: GridView.extent(maxCrossAxisExtent: 300,
                   mainAxisSpacing: 11,
                     crossAxisSpacing: 11,
                     childAspectRatio: 16/9,
                     children: Landscap.pic.map((element){
                       return Container(//height: 100,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(21),
                         image:DecorationImage(image: AssetImage(element['WallPaper']),fit: BoxFit.cover)
                         ));
                     }).toList(),
                   ),
                 )
              ],)
          ),
        ],),
      ),
    );
  }

}























































/*
Container(padding: EdgeInsets.only(top: 20),
width: double.infinity,//color:Colors.brown,
child:
Column(
children: [
Container(
height:400,
child: Column(
children: [
SizedBox(height: 10,),
Row(children: [
Text("The color tone",style: TextStyle(fontSize: 25,
fontWeight: FontWeight.bold),)
],),
// SizedBox(height: 10,),
Column(children: [
ListView.builder(itemCount: ColorPage.kamal.length,
itemBuilder: (_,index)
{
return Container(width: 30,height: 30,
color:ColorPage.kamal[index]['WallPaper'],
);
})

],)
],
),),
Container(height: 400,
child: Column(
children: [
SizedBox(height: 10,),
Row(children: [
Text("The color tone",style: TextStyle(fontSize: 25,
fontWeight: FontWeight.bold),)
],),
// SizedBox(height: 10,),
Column(children: [
ListView.builder(itemCount: ColorPage.kamal.length,
itemBuilder: (_,index)
{
return Container(width: 30,height: 30,
color:ColorPage.kamal[index]['WallPaper'],
);
})

],)
],

),
)

],
),
),*/
