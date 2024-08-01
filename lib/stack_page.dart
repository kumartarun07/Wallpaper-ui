import 'package:flutter/material.dart';

class StackPage extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: SizedBox(height: double.infinity,
       child: Stack(children: [
         Image.network(height: double.infinity,width: double.infinity,
           'https://images.pexels.com/photos/799443/pexels-photo-799443.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',fit: BoxFit.cover,),
      Align(alignment: Alignment.bottomCenter,
        child: Container(width: double.infinity,
          padding: EdgeInsets.only(bottom: 70),
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(width: 70,height: 70,
              child:  Center(
                child: Icon(Icons.info),

              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.6)
              ),
              ),
              SizedBox(width:11,),
              Container(width: 70,height: 70,
              child:  Center(
                child: Icon(Icons.download),

              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.6)
              ),
              ),
              SizedBox(width: 11,),
              Container(width: 70,height: 70,
              child:  Center(
                child: Icon(Icons.brush),

              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
              color: Colors.white.withOpacity(0.6)
              ),
              ),
            ],
          ),
        ),
      )
       //  Container(width: 200,height: 200,color: Colors.orange,),
         //Container(width: 100,height: 100,color: Colors.blue,),
       ],),
     ),
   );
  }

}