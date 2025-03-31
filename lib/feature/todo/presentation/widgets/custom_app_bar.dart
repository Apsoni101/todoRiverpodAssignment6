

import 'package:flutter/material.dart';

import 'package:assignment6/core/app_assets.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      actions: [
        Image.asset(AppAssets.avatar,width: 42,height: 42,),
        SizedBox(width: 14),
      ],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
