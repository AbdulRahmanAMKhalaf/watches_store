import 'package:flutter/material.dart';
import 'package:watches_store/presentation/screens/welcome/welcome_screen_content.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: WelcomeScreenContent(),
    );
  }
}
