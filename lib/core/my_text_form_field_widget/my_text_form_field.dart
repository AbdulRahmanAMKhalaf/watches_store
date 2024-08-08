import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class MyTextFormField extends StatelessWidget {
  const MyTextFormField({
    super.key,
    required this.controller,
    this.maxLines,
    this.maxLength,
    this.focusBorderRadius=20,
    this.enableBorderRadius=20,
    this.labelFontStyle=FontStyle.normal,
    this.labelSize=20,
    this.labelColor,
    this.labelFontWeight=FontWeight.bold,
    this.labelBehavior=FloatingLabelBehavior.never,
    this.fillColor,
    this.fill=false,
    this.labelData,
    this.hintData,
    this.hintFontStyle=FontStyle.normal,
    this.hintSize=15,
    this.hintColor=Colors.grey,
    this.hintFontWeight=FontWeight.bold,
    this.enabled=true,
    this.hiddenText=false,
    this.textAlignVertical=TextAlignVertical.center,
    this.textAlign=TextAlign.start,
    this.inputColor=Colors.black,
    this.inputFontStyle=FontStyle.normal,
    this.inputFontWeight=FontWeight.bold,
    this.inputSize=20,this.preFontWeight=FontWeight.bold,
    this.preFontStyle=FontStyle.normal,
    this.preColor,
    this.preText,
    this.preIconColor,
    this.preSize,
    this.preIcon,
    this.preWidget,
    this.suffText,
    this.suffColor,
    this.suffFontStyle=FontStyle.normal,
    this.suffSize,
    this.suffFontWeight=FontWeight.bold,
    this.suffIconColor,
    this.suffWidget,
    this.suffIcon,
    required this.inputType
  });
  final TextEditingController controller;
  final int ?maxLines;
  final TextAlign textAlign;
  final bool enabled;
  final bool hiddenText;
  final TextAlignVertical textAlignVertical;
  final double inputSize;
  final FontStyle inputFontStyle;
  final FontWeight inputFontWeight;
  final Color inputColor;
  final int ?maxLength;
  final double hintSize;
  final FontWeight hintFontWeight;
  final FontStyle hintFontStyle;
  final Color hintColor;
  final String ?hintData;
  final String ?labelData;
  final double labelSize;
  final FontWeight labelFontWeight;
  final FontStyle labelFontStyle;
  final Color ?labelColor;
  final bool fill;
  final Color ?fillColor;
  final FloatingLabelBehavior labelBehavior;
  final double enableBorderRadius;
  final double focusBorderRadius;
  final TextInputType inputType;
  final Widget ?preWidget;
  final Widget ?preIcon;
  final Color ?preIconColor;
  final String ?preText;
  final double ?preSize;
  final FontWeight preFontWeight;
  final FontStyle preFontStyle;
  final Color ?preColor;
  final Widget ?suffWidget;
  final Widget ?suffIcon;
  final Color ?suffIconColor;
  final String ?suffText;
  final double ?suffSize;
  final FontWeight ?suffFontWeight;
  final FontStyle suffFontStyle;
  final Color ?suffColor;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
    keyboardType:inputType ,
      controller:controller ,
      maxLines: maxLines ,
      style:TextStyle(
        fontStyle:inputFontStyle ,
        fontSize: inputSize.px,
        color: inputColor,
        fontWeight: inputFontWeight,
      ) ,
      textAlign: textAlign,
      decoration:InputDecoration(
        prefix: preWidget,
        prefixIcon:preIcon ,
        prefixIconColor: preIconColor,
        prefixText: preText,
        prefixStyle: TextStyle(
          color: preColor,
          fontStyle: preFontStyle,
          fontSize: preSize?.px,
          fontWeight: preFontWeight
        ),
        suffixIcon: suffIcon,
        suffix: suffWidget,
        suffixIconColor: suffIconColor,
        suffixStyle: TextStyle(
          fontWeight: suffFontWeight,
          fontSize: suffSize?.px,
          fontStyle: suffFontStyle,
          color: suffColor,
        ),
        suffixText:suffText ,
        enabled: enabled,
        hintStyle: TextStyle(
          fontWeight: hintFontWeight,
          color: hintColor,
          fontSize: hintSize.px,
          fontStyle: hintFontStyle
        ),
        hintText: hintData,
          labelText: labelData,
          labelStyle: TextStyle(
            fontStyle: labelFontStyle,
            fontSize: labelSize.px,
            color: labelColor,
            fontWeight: labelFontWeight,
          ),
        floatingLabelBehavior:labelBehavior ,
        floatingLabelStyle: TextStyle(
          fontWeight: labelFontWeight,
          color: labelColor,
          fontSize: labelSize,
          fontStyle: labelFontStyle
        ),
        enabledBorder:OutlineInputBorder(
          borderRadius: BorderRadius.circular(enableBorderRadius),
          borderSide: const BorderSide(color: Colors.black)
        ) ,
        focusedErrorBorder:OutlineInputBorder(
          borderSide: BorderSide(color: Colors.red,width: 3.px),
          borderRadius: BorderRadius.circular(focusBorderRadius)
        ) ,
        focusedBorder:OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black,width: 2.px),
            borderRadius: BorderRadius.circular(focusBorderRadius)
        ) ,
        filled:fill ,
        fillColor: fillColor,
      ) ,
      maxLength:maxLength ,
      textAlignVertical: textAlignVertical,
      enabled: enabled,
      obscureText: hiddenText,
      validator: (value) {
        if(value!.isEmpty){
          return null;
        }else{
          return 'Required Field';
        }
      },
    );
  }
}
