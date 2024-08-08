import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_form_field_widget/my_text_form_field.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/core/utils/images_app.dart';
import 'package:watches_store/presentation/screens/authantication/otp/otp_screen.dart';
import 'package:watches_store/presentation/screens/authantication/sign_up/sign_up_screen.dart';

class LoginScreenContent extends StatelessWidget {
  const LoginScreenContent({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    var formKey = GlobalKey<FormState>();
    return SafeArea(
      child: Form(
        key: formKey,
        child: Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.grey.shade300,
              ),
            ),
            ListView(
              padding: EdgeInsets.all(3.w),
              children: [
                Image.asset(
                  ImagesApp.loginImage,
                  height: 25.h,
                ),
                SizedBox(
                  height: 2.h,
                ),
                Row(
                  children: [
                    const MyTextWidget(
                      data: 'Hi, Let\'s Login',
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
                  data: 'Please enter email & password to log in',
                  color: Colors.grey.shade400,
                  fontWeight: FontWeight.w800,
                  size: 15,
                ),
                SizedBox(
                  height: 3.h,
                ),
                MyTextFormField(
                  controller: emailController,
                  inputType: TextInputType.emailAddress,
                  labelData: 'Email Address',
                  labelColor: Colors.cyan,
                  labelBehavior: FloatingLabelBehavior.always,
                  hintData: 'enter email address',
                  hintSize: 15.px,
                  hintColor: Colors.grey.shade500,
                  textAlign: TextAlign.start,
                  preIcon: const Icon(Icons.email),
                  preIconColor: Colors.black,
                ),
                SizedBox(
                  height: 4.h,
                ),
                MyTextFormField(
                    controller: passwordController,
                    preIcon: const Icon(Icons.key),
                    preIconColor: Colors.black,
                    labelBehavior: FloatingLabelBehavior.always,
                    hintData: 'enter password',
                    hintColor: Colors.grey.shade500,
                    labelData: 'Password',
                    labelColor: Colors.cyan,
                    suffIcon: const Icon(Icons.remove_red_eye_outlined),
                    suffIconColor: Colors.black,
                    inputType: TextInputType.visiblePassword),
                SizedBox(
                  height: 2.h,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(context, CupertinoPageRoute(builder: (context) => const OtpScreen(),));
                    },
                    child: MyTextWidget(
                      data: 'Forget password?',
                      color: Colors.grey,
                      size: 13.px,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20.px),
                    child: MaterialButton(
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          /*Navigator.push(context, route);*/
                        }
                      },
                      color: Colors.black,
                      padding: EdgeInsets.all(3.w),
                      child: const MyTextWidget(
                        data: 'Login',
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
                      data: 'You don\'t have account?',
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
                              builder: (context) => const SignUpScreen(),
                            ));
                      },
                      child: const MyTextWidget(
                        data: 'Sign up',
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
      ),
    );
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
