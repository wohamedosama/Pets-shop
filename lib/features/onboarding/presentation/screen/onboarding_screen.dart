import 'package:flutter/material.dart';
import 'package:pets_shop/core/helper/extension.dart';
import 'package:pets_shop/core/routing/routes.dart';
import 'package:pets_shop/features/onboarding/presentation/widgets/custom_onboarding_content.dart';
import 'package:pets_shop/features/onboarding/presentation/widgets/custom_onboarding_image.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CustomOnboardingImage(),
            CustomOnboardingContent(
              title: 'Find Your Best Companion With Us',
              subtitle:
                  'Join & discover the best suitable pets as per your preferences in your location',
              buttonText: 'Get Started',
              onButtonPressed: () {
                context.pushNamed(Routes.home);
              },
            ),
          ],
        ),
      ),
    );
  }
}
