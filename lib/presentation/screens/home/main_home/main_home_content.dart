import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/app_colors.dart';
import 'package:watches_store/presentation/screens/home/main_home/main_home_model.dart';

class MainHomeContent extends StatelessWidget {
  const MainHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 2.h,),
        MyTextWidget(data: 'Featured',
          size: 15.px,
          color: AppColors.myGreyColor,
          fontWeight: FontWeight.w800,
        ),
        SizedBox(height: 1.w,),
        MyTextWidget(data: 'Products',
        size: 30.px,
            color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
        Row(
          children: [
            const Spacer(),
            GestureDetector(
              onTap: () {},
                child: Icon(Icons.arrow_back_ios_new,size: 20.px,color: Colors.black,)),
            SizedBox(width: 3.w,),
            GestureDetector(
              onTap: () {},
                child: Icon(Icons.arrow_forward_ios_outlined,size: 20.px,color: Colors.black,)),
            CarouselSlider(items: List.generate(mainHomeList.length,
                (index) {
                  return Container(
                    width: double.infinity,
                    padding: EdgeInsets.all(2.w),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(15.px)
                    ),
                  );
                },),
                options: CarouselOptions(
                  height: 20.h,
                  scrollDirection: Axis.horizontal,
                )
            ),
          ],
        )
      ],
    );
  }
}
