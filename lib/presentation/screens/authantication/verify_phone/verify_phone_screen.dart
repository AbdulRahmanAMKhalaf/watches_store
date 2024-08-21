import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:watches_store/core/my_text_widget/my_text.dart';
import 'package:watches_store/presentation/screens/authantication/verify_phone/verify_phone_content.dart';

class VerifyPhoneScreen extends StatelessWidget {
  const VerifyPhoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: MyTextWidget(
          data: 'It\'s You',
          fontWeight: FontWeight.w800,
          size: 25.px,
            align: TextAlign.center,
          color: Colors.black,
        ),
        centerTitle: true,
      ),
      body: const VerifyPhoneContent(),
    );
  }
}
