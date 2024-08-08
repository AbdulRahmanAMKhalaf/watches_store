import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({super.key,required this.data,this.size=15,this.overflow=TextOverflow.fade,this.align=TextAlign.start,this.maxLines,this.decoration=TextDecoration.none,this.fontStyle=FontStyle.normal,this.fontWeight=FontWeight.w500,this.color=Colors.white,this.heightText=1,this.spacing=0.2});
  final String data;
  final double size;
  final TextAlign align;
  final TextOverflow overflow;
  final int? maxLines;
  final Color color;
  final  FontWeight fontWeight;
  final FontStyle fontStyle;
  final double heightText;
  final double spacing;
  final TextDecoration decoration;

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      textAlign: align,
      overflow: overflow,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontWeight: fontWeight,
        fontSize: size.px,
        height: heightText,
        wordSpacing: spacing,
        fontStyle: fontStyle,
        decoration: decoration,
      ),
    );
  }
}
