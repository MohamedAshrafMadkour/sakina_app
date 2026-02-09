import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sakina_app/core/service/qibla_service/qibla_service.dart';
import 'package:sakina_app/features/qibla/manager/cubit/qibla_cubit.dart';
import 'package:sakina_app/features/qibla/presentation/view/widgets/qibla_view.body.dart';

class QiblaView extends StatefulWidget {
  const QiblaView({super.key});

  @override
  State<QiblaView> createState() => _QiblaViewState();
}

class _QiblaViewState extends State<QiblaView> {
  late final QiblaCubit cubit;

  @override
  void initState() {
    super.initState();
    cubit = QiblaCubit(service: QiblaService());
    cubit.start(); // يبدأ مباشرة
  }

  @override
  void dispose() {
    cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: const Scaffold(
        body: QiblaViewBody(),
      ),
    );
  }
}
