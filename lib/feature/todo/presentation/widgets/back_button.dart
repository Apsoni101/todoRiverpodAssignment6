import 'package:assignment6/core/app_colors.dart';
import 'package:assignment6/core/app_strings.dart';
import 'package:assignment6/core/app_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:assignment6/core/app_assets.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomBackButton extends StatelessWidget {
  final VoidCallback onTap;

  const CustomBackButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return TextButton.icon(
      onPressed: onTap,
      label: Text(AppsStrings.close,style: AppTextStyles.bodyLarge,),
      icon: SvgPicture.asset(
        AppAssets.backButton,
        width: 12,
        height: 21,
        colorFilter: ColorFilter.mode(AppColors.blue, BlendMode.srcIn),
      ),
    );
  }
}
