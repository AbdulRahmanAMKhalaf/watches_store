import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/utils/app_colors.dart';
import 'package:watches_store/presentation/screens/home/details/details_content.dart';

class DetailsView extends StatelessWidget {
  const DetailsView({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  DetailsContent(index: index,),
    );
  }
}
