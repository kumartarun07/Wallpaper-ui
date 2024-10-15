import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors
{
  /// light
   static final primaryLightColor = Color(0xffddebf2);
   static final secondaryLightColor = Color(0xffeef3f5);
   static final mainColor = Color(0xff3f64f4);
}

TextStyle mTextStyle12({Color mColor = Colors.black ,mFontWeight = FontWeight.normal})
{
  return TextStyle(fontSize: 12,fontWeight: mFontWeight,color: mColor,fontFamily:'mainFont');
}

TextStyle mTextStyle14({Color mColor = Colors.black,mFontWeight = FontWeight.normal})
{
    return TextStyle(color: mColor,fontFamily: 'main font',fontWeight: FontWeight.normal,fontSize: 14);
}

TextStyle mTextStyle16({Color mColor=Colors.black,mFontWeight=FontWeight.normal})
{
  return TextStyle(fontSize: 16,fontWeight: mFontWeight,color: mColor,fontFamily:'main font');
}

TextStyle mTextStyle35({Color mColor =Colors.black,mFontWeight=FontWeight.normal})
{
  return TextStyle(fontFamily: 'main font',fontWeight: mFontWeight,color: mColor,fontSize: 35);
}