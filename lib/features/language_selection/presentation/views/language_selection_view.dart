import 'package:flutter/material.dart';
import 'package:sakina_app/features/language_selection/presentation/views/widgets/language_selection_view_body.dart';

class LanguageSelectionView extends StatelessWidget {
  const LanguageSelectionView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LanguageSelectionViewBody(),
    );
  }
}
