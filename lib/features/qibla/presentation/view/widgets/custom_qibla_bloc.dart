import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/features/qibla/manager/cubit/qibla_cubit.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_arrow.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/custom_qibla_paint.dart';

class CustomQiblaBloc extends StatelessWidget {
  const CustomQiblaBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      width: 300,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomPaint(
            size: const Size(300, 300),
            painter: UltimateQiblaCompass(),
          ),

          BlocSelector<QiblaCubit, QiblaState, double?>(
            selector: (state) => state is QiblaActivity ? state.rotation : null,
            builder: (context, rotation) {
              if (rotation == null) {
                return const SizedBox();
              }
              return Transform.rotate(
                angle: rotation * pi / 180,
                child: CustomPaint(
                  size: const Size(300, 300),
                  painter: QiblaArrowPainter(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
