import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/features/azkar/presentation/views/widgets/appbar_header.dart'
    show AppbarHeader;

class CustomAppbar extends StatelessWidget {
  const CustomAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 50),
      //  alignment: Alignment.topCenter,
      width: double.infinity,
      height: 200,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            LightAppColors.appbarBackground1,
            LightAppColors.appbarBackground2,
          ],
          begin: Alignment.bottomRight,
          end: Alignment.bottomLeft,
        ),
      ),
      child: AppbarHeader(),
    );
  }
}
