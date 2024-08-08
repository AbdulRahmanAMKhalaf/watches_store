import 'package:flutter/material.dart';
import 'package:watches_store/presentation/screens/authantication/sign_up/sign_up_content.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpContent(),
    );
  }
}
