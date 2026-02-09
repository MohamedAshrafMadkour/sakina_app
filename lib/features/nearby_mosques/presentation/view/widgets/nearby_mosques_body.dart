import 'package:flutter/material.dart';
import 'package:sakina_app/core/widgets/custom_app_bar.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/custom_mosques_list.dart';
import 'package:sakina_app/features/nearby_mosques/presentation/view/widgets/hadith_mosque_item.dart';

class NearbyMosquesBody extends StatelessWidget {
  const NearbyMosquesBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [
        CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: CustomAppBar(
                subTitle: 'بيوت الله ',
                title: 'المساجد القريبة',
                isShow: true,
              ),
            ),
            SliverToBoxAdapter(
              child: SizedBox(
                height: 8,
              ),
            ),
            SliverPadding(
              padding: EdgeInsets.only(bottom: 30),
              sliver: CustomMosquesList(),
            ),
          ],
        ),
        Positioned(
          left: 24,
          right: 24,
          bottom: 30,
          child: HadithMosqueItem(),
        ),
      ],
    );
  }
}
