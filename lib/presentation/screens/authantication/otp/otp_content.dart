import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_form_field_widget/my_text_form_field.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/images_app.dart';

class OtpContent extends StatelessWidget {
  const OtpContent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController=TextEditingController();
    return SafeArea(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [Colors.greenAccent.shade100.withOpacity(0.9),Colors.greenAccent.shade100.withOpacity(0.9),Colors.lightBlueAccent.shade100.withOpacity(0.5)])
            ),
          ),
     /*     ClipPath(
            clipper: MyClipper3(),
            child: Container(
              color: Colors.black,
            ),
          ),*/
          ClipPath(
            clipper: MyClipper2(),
            child: Container(
              color: Colors.grey.shade200
            ),
          ),
          ListView(
            padding: EdgeInsets.all(3.w),
            children: [
              Lottie.asset(ImagesApp.lottiePhoneNumber,),
              SizedBox(height: 1.h,),
              const MyTextWidget(data: 'Enter your Phone number',
              color: Colors.black,
                fontWeight: FontWeight.w800,
                size: 20,
                align: TextAlign.center,

              ),
              SizedBox(height: 1.h,),
              MyTextWidget(data: 'We will send otp message to verify that is you',
              fontWeight: FontWeight.w800,
                  color: Colors.grey.shade500,
                align: TextAlign.center,
              ),
              SizedBox(height: 3.h,),
              MyTextFormField(controller: phoneNumberController,
                  inputType: TextInputType.phone,
              preIcon: const Icon(Icons.phone),
                preIconColor: Colors.black,
                hintData: '07########',
                labelBehavior: FloatingLabelBehavior.always,
                labelData: 'Phone Number',
                labelColor: Colors.cyan,
                maxLength: 10,
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.px),
                  child: MaterialButton(onPressed: (){},
                    color: Colors.black,
                    padding: EdgeInsets.all(5.w),
                  child: const MyTextWidget(data: 'Send Code',
                  color: Colors.white,
                    size: 20,
                    fontWeight: FontWeight.w800,
                  ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyClipper2 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0,size.height);
    path.lineTo(size.width, size.height*.5+40);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }
}
/*
class MyClipper3 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(size.width*.5,size.height*.5);
    path.quadraticBezierTo(size.width*.5-200.px, size.height*.5-200, 0, 0);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
*/
/*class MyClipper4 extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(size.width,0);
    path.lineTo(size.width*.5, size.height*.5);
    path.lineTo(size.width, size.height);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}*/
