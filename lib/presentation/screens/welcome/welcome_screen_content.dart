import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/presentation/screens/authantication/login/login_screen.dart';
import 'package:watches_store/presentation/screens/welcome/model.dart';
import 'dart:math' as math;

class WelcomeScreenContent extends StatelessWidget {
  const WelcomeScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller=PageController();
    return PageView(
      controller: controller,
      children: List.generate(welcomeList.length, (index) {
        return AnimatedBuilder(
          builder: (context, child) {
            double pageOffest = 0;
            if(controller.position.haveDimensions){
              pageOffest=controller.page!-index-1;
            }
            double gauss =
            math.exp(-(math.pow((pageOffest.abs() - 0.5), 2) / 0.08));
            return  Transform.translate(
              offset: Offset(-32 * gauss * pageOffest.px-1.px, 0),
              child: Stack(
                children: [
                  Image.asset(welcomeList[index].image,fit: BoxFit.cover,height: double.infinity,),
                  Container(decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [Colors.black.withOpacity(0.8),Colors.black.withOpacity(0.5),Colors.black.withOpacity(0.5),Colors.black.withOpacity(0.8)],),
                  ),width: double.infinity,height: double.infinity,),
                  Positioned(
                    top: 7.h,
                    left: 4.w,
                    width: 60.w,
                    child: Align(
                      alignment: Alignment.bottomRight,
                      child: MyTextWidget(data: welcomeList[index].title,
                        heightText: 1.7,
                        overflow: TextOverflow.fade,
                        color: Colors.white,
                        size: 20,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ),
                  Positioned(
                   top: 6.h,
                   left: 84.w,
                   child: Align(
                     alignment: Alignment.topRight,
                     child:  TextButton(onPressed: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) =>const LoginScreen() ,));
                     },
                         child: MyTextWidget(data: 'Login',
                           fontWeight: FontWeight.w600,
                           fontStyle: FontStyle.italic,
                           color: Colors.white,
                           size: 20.px,
                         )),
                   ),
                 ),
                  Positioned(
                    bottom: 2.h,
                    left: 42.w,
                    child: Align(
                      alignment: Alignment.bottomCenter,
                      child: SmoothPageIndicator(controller: controller, count:welcomeList.length,
                        effect: ExpandingDotsEffect(
                            radius: 10.px,
                            expansionFactor: 1.w,
                            dotHeight: 10.px,
                            dotWidth: 10.px,
                            dotColor: Colors.white,
                            activeDotColor: Colors.blue,
                            spacing: 1.w
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
          animation: controller,
        );
      },),
    );
  }
}
