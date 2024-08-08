import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_form_field_widget/my_text_form_field.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/images_app.dart';
import 'package:watches_store/presentation/screens/authantication/login/login_screen.dart';
import 'package:watches_store/presentation/screens/authantication/otp/otp_screen.dart';

class SignUpContent extends StatelessWidget {
  const SignUpContent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController=TextEditingController();
    TextEditingController emailController=TextEditingController();
    TextEditingController passwordController=TextEditingController();
    TextEditingController phoneNumberController=TextEditingController();
    var formsKey=GlobalKey<FormState>();
    return SafeArea(
        child: Form(
          key: formsKey,
          child: Stack(
            children: [
              ClipPath(
                clipper: MyClipper(),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  color: Colors.black.withOpacity(0.7),
                ),
              ),
              ListView(
                padding: EdgeInsets.all(3.w),
                children: [
                  Image.asset(ImagesApp.addUser,height:15.h,),
                  SizedBox(height: 6.h,),
                  Row(
                    children: [
                      const MyTextWidget(
                        data: 'Hi, Let\'s Sign up',
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                        size: 30,
                      ),
                      SizedBox(
                        width: 1.w,
                      ),
                      Image.asset(
                        'assets/icons/smile.png',
                        height: 7.w,
                        color: Colors.cyan,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  MyTextWidget(
                    data: 'Please enter your  name, email, password & phone number to sign up',
                    color: Colors.grey.shade400,
                    fontWeight: FontWeight.w800,
                    size: 15,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  MyTextFormField(controller: nameController,
                      inputType: TextInputType.name,
                  preIcon: const Icon(Icons.person),
                    preIconColor: Colors.black,
                    labelData: 'Username',
                    labelBehavior: FloatingLabelBehavior.always,
                    labelColor: Colors.cyan,
                    hintData: 'enter your name',
                    hintColor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 4.h,),
                  MyTextFormField(controller: emailController,
                    inputType: TextInputType.emailAddress,
                    preIcon: const Icon(Icons.email),
                    preIconColor: Colors.black,
                    labelData: 'Email Address',
                    labelBehavior: FloatingLabelBehavior.always,
                    labelColor: Colors.cyan,
                    hintData: 'enter your email address',
                    hintColor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 4.h,),
                  MyTextFormField(controller: phoneNumberController,
                    inputType: TextInputType.phone,
                    preIcon: const Icon(Icons.phone),
                    preIconColor: Colors.black,
                    labelData: 'Phone Number',
                    labelBehavior: FloatingLabelBehavior.always,
                    labelColor: Colors.cyan,
                    hintData: 'enter your phone number',
                    hintColor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 4.h,),
                  MyTextFormField(controller: passwordController,
                    inputType: TextInputType.text,
                    preIcon: const Icon(Icons.key),
                    preIconColor: Colors.black,
                    labelData: 'Password',
                    labelBehavior: FloatingLabelBehavior.always,
                    labelColor: Colors.cyan,
                    hintData: 'enter your password',
                    hintColor: Colors.grey.shade500,
                  ),
                  SizedBox(height: 4.h,),
                  MyTextFormField(controller: passwordController,
                    inputType: TextInputType.text,
                    preIcon: const Icon(Icons.key),
                    preIconColor: Colors.black,
                    labelData: 'Re_Type Password',
                    labelBehavior: FloatingLabelBehavior.always,
                    labelColor: Colors.cyan,
                    hintData: 'enter your password again',
                    hintColor: Colors.grey.shade500,
                    suffIcon: const Icon(Icons.remove_red_eye_outlined),
                    suffIconColor: Colors.black,
                  ),
                  SizedBox(height: 5.h,),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 25.w),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.px),
                      child: MaterialButton(
                        onPressed: () {
                          if (formsKey.currentState!.validate()) {
                            Navigator.push(context, CupertinoPageRoute(builder: (context) => const OtpScreen(),));
                          }
                        },
                        color: Colors.black,
                        padding: EdgeInsets.all(3.w),
                        child: const MyTextWidget(
                          data: 'Sign up',
                          fontWeight: FontWeight.w600,
                          size: 25,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const MyTextWidget(
                        data: 'You have an account?',
                        color: Colors.grey,
                        fontWeight: FontWeight.w600,
                        size: 15,
                      ),
                      SizedBox(
                        width: 2.w,
                      ),
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              CupertinoPageRoute(
                                builder: (context) => const LoginScreen(),
                              ));
                        },
                        child: const MyTextWidget(
                          data: 'Login',
                          color: Colors.cyan,
                          fontWeight: FontWeight.w800,
                          size: 16,
                        ),
                      ),
                    ],
                  ),

                ],
              ),
            ],
          ),
        ));
  }
}
class MyClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    Path path=Path();
    path.lineTo(0, size.height);
    path.quadraticBezierTo(size.width-100, size.height-230, size.width*.1, size.height*.2);
    path.lineTo(size.width,0);
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}