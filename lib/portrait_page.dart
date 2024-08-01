import 'package:flutter/material.dart';
import 'package:wallpaper/app_containst.dart';

class PortraitPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: Padding(
       padding: const EdgeInsets.all(20.0),
       child: Container(width: double.infinity,
         child: Column(crossAxisAlignment: CrossAxisAlignment.start,
           children: [
             Column(children: [Text("Nature",style:
             TextStyle(fontSize: 40,
               fontWeight: FontWeight.bold,
             ),
             )
             ],),
             Text("18 wallpaper available",style: TextStyle(fontSize: 20),),
             SizedBox(height: 20,),
             Container(width: double.infinity,height: 700,
             child: GridView.extent(maxCrossAxisExtent: 200,
               mainAxisSpacing: 20,
               crossAxisSpacing: 20,
               childAspectRatio: 9/16,
               children:
               Portrait.wall.map((element){
                 return Container(decoration: BoxDecoration(
                   image: DecorationImage(image: AssetImage(element['WallPaper'],),fit: BoxFit.cover)
                 ),);
               } ).toList()


             ),
             )
           ],
         ),
       ),
     ),
   );
  }

}