import 'package:flutter/material.dart';
import 'package:pets_shop/core/theme/app_images.dart';

class CustomOnboardingImage extends StatelessWidget {
  final String imagePath;
  final BoxFit fit;
  final double? height;
  final double? width;

  const CustomOnboardingImage({
    super.key,
    this.imagePath = AppImages.assetsImagesCatAndDog,
    this.fit = BoxFit.fitHeight,

    this.height,
    this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Image.asset(imagePath, fit: fit, height: height, width: width),
    );
  }
}
