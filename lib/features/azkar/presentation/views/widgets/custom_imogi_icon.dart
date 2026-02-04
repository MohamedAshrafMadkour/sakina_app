import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/styles/app_styles.dart';

class customImogiIcon extends StatelessWidget {
  const customImogiIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Color(0x33FFFFFF),
        shape: BoxShape.circle,
      ),
      child: Text(
        '🤲',
        style: AppStyles.imogiStyle(context),
      ),
    );
  }
}
