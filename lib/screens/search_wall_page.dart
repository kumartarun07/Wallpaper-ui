import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper/app_containst.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_bloc.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_state.dart';
import 'package:wallpaper/data/bloc/searchBloc/search_bloc.dart';
import 'package:wallpaper/data/bloc/searchBloc/search_event.dart';
import 'package:wallpaper/data/bloc/searchBloc/search_state.dart';
import 'package:wallpaper/screens/detail_page.dart';
import 'package:wallpaper/utills/utills_helper.dart';

class SearchWallPage extends StatelessWidget
{
  String query;
  SearchWallPage({required this.query});
  @override
  Widget build(BuildContext context)
  {
    context.read<SearchBloc>().add(WallSearchEvent(query: query));
   return Scaffold(backgroundColor: AppColors.primaryLightColor,
     body:BlocBuilder<SearchBloc,SearchState>(builder: (_,state)
     {
       if(state is SearchLoadingState){
         return Center(child: CircularProgressIndicator(),);
       }else if(state is SearchErrorState){
         return Center(child: Text(state.ErrorMsg),);
       }else if(state is SearchLoadedState){
         var mData = state.photos;
         return  Padding(
           padding: const EdgeInsets.all(20.0),
           child: ListView(
               shrinkWrap: true,
               children:[ Text("${query}",style:mTextStyle35(mFontWeight: FontWeight.bold,mColor: Colors.black) ),
                 Text("18 wallpaper available",style:mTextStyle16()),
                 SizedBox(height: 20,),
                 Container(
                     child:GridView.builder(
                       shrinkWrap: true,
                       physics: NeverScrollableScrollPhysics(),
                       gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           crossAxisSpacing: 15,
                           childAspectRatio: 2/3,
                           mainAxisSpacing: 15
                       ),
                       itemCount: mData.length,
                       itemBuilder: (_,index){
                         return InkWell(
                           onTap: (){
                             Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailPage(mIndex: index)));
                           },
                           child: Container(
                             height: 450,width: 100,
                             decoration: BoxDecoration(
                                 borderRadius: BorderRadius.circular(10),
                                 image: DecorationImage(image: NetworkImage(mData[index].src!.portrait.toString()),fit: BoxFit.cover)),
                           ),
                         );
                       },
                     )
                 ),
               ] ),
         );
       }
       return Container();
     })
   );
  }

}