import 'package:flutter/material.dart';
import 'package:pets_shop/features/onboarding/presentation/screen/onboarding_screen.dart';

class PetsShop extends StatelessWidget {
  const PetsShop({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardingScreen(),
    );
  }
}
