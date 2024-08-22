import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/app_colors.dart';
import 'package:watches_store/presentation/screens/home/main_home/main_home_content.dart';
import 'package:watches_store/presentation/screens/home/main_home/main_home_model.dart';

class DetailsContent extends StatelessWidget {
  const DetailsContent({super.key,required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        ClipPath(
          clipper: MyClipper5(),
          child: Container(
            height: 80.h,
            width: double.infinity,
            color: AppColors.mainColor,
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: BorderRadius.circular(15.px)
                ),
                child: Padding(
                  padding:  EdgeInsets.all(5.w),
                  child: MyTextWidget(data: 'Add To Cart',
                  color: Colors.black,
                      size: 25.px,
                    align: TextAlign.center,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15.px)
                ),
                child: Padding(
                  padding:  EdgeInsets.all(3.w),
                  child: IconButton(onPressed: () {},
                  icon: const Icon(Icons.favorite_border,),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.grey.shade300,
                    borderRadius: BorderRadius.circular(15.px)
                ),
                child: Padding(
                  padding:  EdgeInsets.all(3.w),
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.help_outline,size: 25.px,),
                  ),
                ),
              ),
            ],
          ),
        ),
        SafeArea(
          child: ListView(
            padding: EdgeInsets.all(3.w),
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back_ios_new,color: Colors.black,size: 25.px,)),
                  const Spacer(),
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.shopping_cart_outlined,color: Colors.black,size: 25.px,)),
                  IconButton(
                      onPressed: (){
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.favorite_border,color: Colors.black,size: 25.px,)),
                ],
              ),
              SizedBox(height: 2.h,),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.asset(mainHomeList[index].logo,height: 7.h,),
                        SizedBox(height: 2.h,),
                        MyTextWidget(data: mainHomeList[index].name,
                        color: Colors.black,
                          maxLines: 2,
                          size: 25.px,
                          fontWeight: FontWeight.w800,
                        ),
                        SizedBox(height: 1.h,),
                        MyTextWidget(data: mainHomeList[index].model,
                        fontWeight: FontWeight.w800,
                          size: 20.px,
                          color: AppColors.mainColor,
                        ),
                      ],
                    ),
                  ),
                Expanded(child: Image.asset(mainHomeList[index].image)),
                ],
              ),
              SizedBox(height: 2.h,),
              MyTextWidget(data: 'The Graff Hallucination currently holds the record as the world’s most expensive wristwatch boasting over 110 karats and a staggering purchase price of \$55 million. While its dazzling appearance is truly magnificent, watch enthusiasts seeking intricate mechanics may find it a bit disappointing. Nonetheless, its opulent design and exquisite craftsmanship make it a true gem in the world of luxury timepieces.',
              size: 16.px,
                  heightText: 1.2,
                  color: Colors.black,
                  fontWeight: FontWeight.w800,
              ),
              SizedBox(height: 3.h,),
              Align(
                alignment: Alignment.topRight,
                child: MyTextWidget(data: 'Price:${mainHomeList[index].price}',
                fontWeight: FontWeight.w800,
                  size: 22.px,
                  color: Colors.black,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
class MyClipper6 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
   Path path=Path();
   path.lineTo(size.width, size.height*5);
   /*path.lineTo(0, size.height*.5);*/
   path.lineTo(0, size.height);
   return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }

}