import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_form_field_widget/my_text_form_field.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/app_colors.dart';
import 'package:watches_store/core/utils/app_images.dart';
import 'package:watches_store/presentation/screens/authantication/otp/otp_screen.dart';

class VerifyPhoneContent extends StatelessWidget {
  const VerifyPhoneContent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phoneNumberController=TextEditingController();
    return SafeArea(
      child: Stack(
        children: [
          ListView(
            padding: EdgeInsets.all(3.w),
            children: [
              Lottie.asset(AppImages.lottieMessageCode,),
              SizedBox(height: 1.h,),
              const MyTextWidget(data: 'Enter your Phone number',
              color: Colors.black,
                fontWeight: FontWeight.w800,
                size: 20,
                align: TextAlign.center,

              ),
              SizedBox(height: 1.h,),
              MyTextWidget(data: 'We will send OTP code to verify that is you',
              fontWeight: FontWeight.w800,
                  color: AppColors.myGreyColor,
                align: TextAlign.center,
              ),
              SizedBox(height: 3.h,),
              MyTextFormField(controller: phoneNumberController,
                  inputType: TextInputType.phone,
              preIcon: const Icon(Icons.phone),
                preIconColor: Colors.black,
                hintData: '07########',
                hintColor: AppColors.myGreyColor,
                labelBehavior: FloatingLabelBehavior.always,
                labelData: 'Phone Number',
                labelColor: AppColors.mainColor,
                maxLength: 10,
              ),
              SizedBox(height: 5.h,),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.w),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20.px),
                  child: MaterialButton(onPressed: (){
                    AwesomeDialog(context: context,
                    title: 'Are you sure this your phone number?',
                      btnOk: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: TextButton(onPressed: (){
                          Navigator.push(context, CupertinoPageRoute(builder: (context) => const OtpScreen(),));
                        },
                            style: const ButtonStyle(
                              backgroundColor: WidgetStatePropertyAll(Colors.green),
                            ),
                            child: Padding(
                              padding: EdgeInsets.all(2.w),
                              child: MyTextWidget(data: 'Yes',
                              size: 20.px,
                                  align: TextAlign.center,
                                color: Colors.white,
                                  fontWeight: FontWeight.w800,
                              ),
                            )),
                      ),
                     padding: EdgeInsets.all(3.w),
                      buttonsBorderRadius: BorderRadius.circular(15),
                      showCloseIcon: true,
                     customHeader: Image.asset('assets/icons/question.png',color: Colors.orangeAccent,)
                    ).show();
                  },
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
    path.lineTo(size.width,size.height);
    path.lineTo(size.width, 0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
   return true;
  }
}