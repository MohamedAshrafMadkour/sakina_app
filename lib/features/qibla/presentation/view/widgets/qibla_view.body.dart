import 'package:flutter/material.dart';
import 'package:sakina_app/core/constants/app_routes.dart';

import 'package:sakina_app/core/widgets/custom_app_bar.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_advice.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_bloc.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_item.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/qibla_success.dart';

class QiblaViewBody extends StatelessWidget {
  const QiblaViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: CustomAppBar(
            isShow: false,
            title: 'اتجاه القبلة',
            subTitle: 'القاهرة، مصر',
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 70,
          ),
        ),

        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: CustomQiblaBloc(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 80,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, AppRoutes.settingsView);
              },
              child: CustomQiblaItem(),
            ),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 32,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: QiblaSuccess(),
          ),
        ),
        SliverToBoxAdapter(
          child: SizedBox(
            height: 12,
          ),
        ),
        SliverToBoxAdapter(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 23),
            child: CustomQiblaAdvice(),
          ),
        ),
      ],
    );
  }
}
