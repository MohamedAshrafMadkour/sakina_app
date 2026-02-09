import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/constants/app_colors/light_app_colors.dart';
import 'package:sakina_app/features/splash/presentation/view/widgets/custom_divider.dart';
import 'package:sakina_app/features/tasbih/presentation/manager/tasbih_cubit.dart';
import 'package:sakina_app/features/tasbih/presentation/manager/tasbih_state.dart';
import 'package:sakina_app/features/tasbih/presentation/view/widgets/custom_reset.dart';
import 'package:sakina_app/features/tasbih/presentation/view/widgets/custom_tasbih_section_count.dart';
import 'package:sakina_app/features/tasbih/presentation/view/widgets/tasbih_button.dart';
import 'package:sakina_app/features/tasbih/presentation/view/widgets/tasbih_counter.dart';

class TasbihSection extends StatelessWidget {
  const TasbihSection({super.key});

  @override
  Widget build(BuildContext context) {
    final isDark = Theme.of(context).brightness == Brightness.dark;
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.only(top: 32, left: 32, bottom: 32),
      decoration: BoxDecoration(
        color: isDark ? const Color.fromRGBO(18, 48, 40, 1) : Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          width: 1.5,
          color: isDark
              ? const Color.fromRGBO(39, 69, 61, 1)
              : const Color.fromRGBO(13, 126, 94, 0.15),
        ),
        boxShadow: isDark
            ? const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.25),
                  blurRadius: 10,
                  offset: Offset(0, 6),
                ),
              ]
            : const [
                BoxShadow(
                  color: Color.fromRGBO(0, 0, 0, 0.10),
                  blurRadius: 15,
                  offset: Offset(0, 8),
                ),
              ],
      ),
      child: Column(
        children: [
          const TasbihCounter(),
          const SizedBox(height: 24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: const TasbihButton(),
          ),
          const SizedBox(height: 58),
          Opacity(
            opacity: 0.3,
            child: CustomDivider(
              thickness: 2,
              color: LightAppColors.greenColor0D7,
              endIndent: MediaQuery.sizeOf(context).width * .05,
              indent: MediaQuery.sizeOf(context).width * .05,
            ),
          ),
          const SizedBox(height: 4),
          Directionality(
            textDirection: TextDirection.rtl,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                BlocBuilder<TasbihCubit, TasbihState>(
                  buildWhen: (p, c) => p.round != c.round,
                  builder: (context, state) {
                    return CustomTasbihSectionCount(
                      title: state.round.toString(),
                      subTitle: 'الجولات',
                    );
                  },
                ),
                BlocBuilder<TasbihCubit, TasbihState>(
                  buildWhen: (p, c) => p.fullCount != c.fullCount,
                  builder: (context, state) {
                    return CustomTasbihSectionCount(
                      title: state.fullCount.toString(),
                      subTitle: 'الاجمالي اليوم',
                    );
                  },
                ),
                CustomReset(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
