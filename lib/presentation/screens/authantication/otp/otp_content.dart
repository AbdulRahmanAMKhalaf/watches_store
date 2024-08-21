import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:pinput/pinput.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/app_colors.dart';
import 'package:watches_store/presentation/screens/authantication/verify_phone/verify_phone_screen.dart';
import 'package:watches_store/presentation/screens/home/main_home/main_home_screen.dart';

class OtpContent extends StatelessWidget {
  const OtpContent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController otpController=TextEditingController();
    return SafeArea(
      child: ListView(
        padding: EdgeInsets.all(3.w),
        children: [
          Lottie.asset('assets/images/number.json'),
          SizedBox(height: 1.h,),
          MyTextWidget(data: 'Please enter the OTP code that send to your phone number',
          color: AppColors.myGreyColor,
            size: 17.px,
            fontWeight: FontWeight.w800,
              heightText: 1.2,
              align: TextAlign.center,
          ),
          SizedBox(height: 5.h,),
          Pinput(
            animationCurve: Curves.bounceInOut,
            defaultPinTheme: PinTheme(
              padding: EdgeInsets.all(5.w),
              textStyle: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.w800,
                fontSize: 20.px
              ),
              decoration:  BoxDecoration(color: Colors.grey.shade200,
                shape: BoxShape.circle
              ),
            ),
            controller: otpController,
            validator: (value) {
              if(otpController.text.isEmpty){
                return 'Required field';
              }
              else{
                return null;
              }
            },
          ),
          SizedBox(height: 5.h,),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(context,
                  CupertinoPageRoute(builder: (context) => const MainHomeScreen(),),
                  (route) => false,);
            },
            child: MyTextWidget(data: 'Resend Code',
              fontWeight: FontWeight.w800,
              color: AppColors.mainColor,
              align: TextAlign.center,
              size: 17.px,
            ),
          ),
          SizedBox(height: 3.h,),
          GestureDetector(
            onTap: () {
              Navigator.pushAndRemoveUntil(context,
                  CupertinoPageRoute(builder: (context) => const VerifyPhoneScreen(),)
                  , (route) => false,);
            },
            child: MyTextWidget(data: 'Change Phonenumber',
              size: 15.px,
              color: Colors.black,
              fontWeight: FontWeight.w800,
              align: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
