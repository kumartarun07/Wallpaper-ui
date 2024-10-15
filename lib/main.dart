import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:wallpaper/data/bloc/GetBloc/wallpaper_bloc.dart';
import 'package:wallpaper/data/remote/api_helper.dart';
import 'package:wallpaper/repository/wallpaper_repository.dart';
import 'package:wallpaper/screens/search_wall_page.dart';
import 'package:wallpaper/screens/detail_page.dart';
import 'package:wallpaper/screens/wallpaper_page.dart';

void main()
{
  runApp(BlocProvider(create: (context)=>WallPaperBloc(wallPaperRepository: WallPaperRepository(apiHelper: ApiHelper())),child: Wallpaper(),));
}
class Wallpaper extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:WallpaperPage(),
    );
  }

}
