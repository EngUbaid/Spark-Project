import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  String tittle;
  VoidCallback ontap;
  double width;
  double height;

   Buttons({super.key, required this.tittle, required this.ontap, required this.width, required this.height});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Container(
        width:width ,
        height:height ,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue
        ),
        child: Center(child: Text(tittle),),
      ),
    );
  }
}