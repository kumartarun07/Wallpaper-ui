import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_bloc.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_state.dart';
import 'package:wallpaper/utills/custom_widget.dart';

import '../data/bloc/searchBloc/search_bloc.dart';
import '../data/bloc/searchBloc/search_state.dart';

class DetailPage extends StatelessWidget
{
  int mIndex;
  DetailPage({required this.mIndex});
  @override
  Widget build(BuildContext context)
  {
   return Scaffold(
     body: BlocBuilder<SearchBloc,SearchState>(builder: (_,state)
     {
       if(state is SearchLoadingState){
         return Center(child: CircularProgressIndicator(),);
       }else if(state is SearchErrorState){
         return Center(child: Text(state.ErrorMsg),);
       }else if(state is SearchLoadedState){
         return SizedBox(height: double.infinity,
           child: Stack(
             children: [
               Image.network(height: double.infinity,width: double.infinity,
                 state.photos[mIndex].src!.portrait.toString(),fit: BoxFit.cover,),
               Align(alignment: Alignment.bottomCenter,
                 child: Container(width: double.infinity,
                   padding: EdgeInsets.only(bottom: 70),
                   child:
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       CustomWidget(mIcon: Icon(Icons.info)),
                       SizedBox(width:11,),
                       CustomWidget(mIcon: Icon(Icons.download)),
                       SizedBox(width: 11,),
                       CustomWidget(mIcon: Icon(Icons.brush))
                     ],
                   ),
                 ),
               )
               //  Container(width: 200,height: 200,color: Colors.orange,),
               //Container(width: 100,height: 100,color: Colors.blue,),
             ],),
         );
       }
       return Container();
     })
   );
  }

}