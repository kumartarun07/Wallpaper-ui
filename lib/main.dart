import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:wallpaper/portrait_page.dart';
import 'package:wallpaper/stack_page.dart';
import 'package:wallpaper/wallpaper_page.dart';

void main()
{
  runApp(Wallpaper());
}
class Wallpaper extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: WallpaperPage(),
    );
  }

}
