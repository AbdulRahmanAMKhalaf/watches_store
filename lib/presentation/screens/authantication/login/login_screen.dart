import 'package:flutter/material.dart';
import 'package:watches_store/presentation/screens/authantication/login/login_content.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: LoginScreenContent(),
    );
  }
}
