import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/app_colors.dart';
import 'package:watches_store/presentation/screens/home/details/details_view.dart';
import 'package:watches_store/presentation/screens/home/main_home/main_home_model.dart';

class MainHomeContent extends StatelessWidget {
  const MainHomeContent({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(3.w),
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
        SizedBox(height: 2.h,),
        CarouselSlider(
            items: List.generate(mainHomeList.length,
                  (index) {
                return GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) =>  DetailsView(index: index,),),
                    );
                  },
                  child: Stack(
                    children: [
                      ClipPath(
                        clipper: MyClipper5(),
                        child: Container(
                          height: 26.h,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: AppColors.mainColor,
                            borderRadius: BorderRadius.circular(15.px),
                          ),
                        ),
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(3.w),
                        decoration: BoxDecoration(
                            color: AppColors.authImagesColor,
                            borderRadius: BorderRadius.circular(15.px)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                           Expanded(
                             child: Column(
                               crossAxisAlignment:  CrossAxisAlignment.start,
                               children: [
                                 Image.asset(mainHomeList[index].logo,height: 4.h,),
                                 SizedBox(height: 2.h,),
                                 MyTextWidget(data: mainHomeList[index].name,
                                 heightText: 1.2,
                                   fontWeight: FontWeight.w600,
                                   maxLines: 2,
                                   color: Colors.black,
                                 ),
                                 SizedBox(height: 2.h,),
                                 MyTextWidget(data: mainHomeList[index].model,
                                   heightText: 1.2,
                                   fontWeight: FontWeight.w800,
                                   maxLines: 2,
                                   size: 20.px,
                                   color: AppColors.mainColor,
                                 ),
                                 const Spacer(),
                                 MyTextWidget(
                                   data: mainHomeList[index].price,
                                   align: TextAlign.start,
                                   color: Colors.black,
                                   fontWeight: FontWeight.w800,
                                   size: 17.px,
                                 ),
                               ],
                             ),
                           ),
                            SizedBox(width: 2.w,),
                            Expanded(child: Image.asset(mainHomeList[index].image))
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              },),
            options: CarouselOptions(
              height: 26.h,
              enlargeCenterPage: true,
              enableInfiniteScroll: true,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              scrollPhysics: const AlwaysScrollableScrollPhysics(),
              scrollDirection: Axis.horizontal
            )
        ),
        SizedBox(height: 7.h,),
        MyTextWidget(data: 'Featured',
          size: 15.px,
          color: AppColors.myGreyColor,
          fontWeight: FontWeight.w800,
        ),
        SizedBox(height: 1.w,),
        MyTextWidget(data: 'Trendings',
          size: 30.px,
          color: Colors.black,
          fontWeight: FontWeight.w800,
        ),
        SizedBox(height: 2.h,),
        CarouselSlider.builder(
        itemBuilder: (context, index, realIndex) => GridView(
          physics: const NeverScrollableScrollPhysics(),
            gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              crossAxisSpacing: 5.w,
              childAspectRatio: 0.65
            ),
          children: List.generate(
              mainHomeList.length,
              (index) => GestureDetector(
                onTap: () {
                  Navigator.push(context,
                    CupertinoPageRoute(builder: (context) =>  DetailsView(index: index,),),
                  );
                },
                child: Stack(
                  children: [
                    ClipPath(
                      clipper: MyClipper5(),
                      child: Container(
                        height: 26.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: AppColors.mainColor,
                          borderRadius: BorderRadius.circular(15.px),
                        ),
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      padding: EdgeInsets.all(3.w),
                      decoration: BoxDecoration(
                          color: AppColors.authImagesColor,
                          borderRadius: BorderRadius.circular(15.px)
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment:  CrossAxisAlignment.start,
                              children: [
                                Image.asset(mainHomeList[index].logo,height: 4.h,),
                                SizedBox(height: 2.h,),
                                MyTextWidget(data: mainHomeList[index].name,
                                  heightText: 1.2,
                                  fontWeight: FontWeight.w600,
                                  maxLines: 2,
                                  color: Colors.black,
                                ),
                                SizedBox(height: 2.h,),
                                MyTextWidget(data: mainHomeList[index].model,
                                  heightText: 1.2,
                                  fontWeight: FontWeight.w800,
                                  maxLines: 2,
                                  size: 20.px,
                                  color: AppColors.mainColor,
                                ),
                                const Spacer(),
                                MyTextWidget(
                                  data: mainHomeList[index].price,
                                  align: TextAlign.start,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800,
                                  size: 17.px,
                                ),
                              ],
                            ),
                          ),
                          SizedBox(width: 2.w,),
                          Expanded(child: Image.asset(mainHomeList[index].image))
                        ],
                      ),
                    ),
                  ],
                ),
              )
            ,),
        ),
          itemCount: mainHomeList.length,
          options: CarouselOptions(
            enlargeCenterPage: true,
          ),
        ),
      ],
    );
  }
}
class MyClipper5 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(size.width, 0);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }

}
