import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/presentation/screens/authantication/otp/otp_content.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: MyTextWidget(
          data: 'OTP Verification',
          color: Colors.black,
          size: 25.px,
          fontWeight: FontWeight.w800,
        ),
        centerTitle: true,
       automaticallyImplyLeading: false,
      ),
      body: const OtpContent(),
    );
  }
}
