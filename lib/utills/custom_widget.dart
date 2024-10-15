import 'package:flutter/material.dart';

class CustomWidget extends StatelessWidget
{
  Icon? mIcon;
  CustomWidget({required this.mIcon});
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      body: Container(height: 70,width: 70,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),
      color: Colors.white.withOpacity(0.6)
      ),

        child: mIcon,
      ),
    );
  }

}
