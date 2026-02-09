import 'dart:async';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sakina_app/core/manager/theme_hydrated_cubit.dart';
import 'package:sakina_app/core/service/get_it_setup.dart';
import 'package:sakina_app/sakina_app.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  HydratedBloc.storage = await HydratedStorage.build(
    storageDirectory: HydratedStorageDirectory(
      (await getTemporaryDirectory()).path,
    ),
  );
  getItSetup();
  if (kReleaseMode) {
    // runZonedGuarded(
    //   () async {
    //     await SentryFlutter.init(
    //       (options) {
    //         options.dsn = AppKeys.dsnkey;
    //       },
    //     );
    //     runApp(
    //       BlocProvider(
    //         create: (context) => getIt.get<ThemeCubit>(),
    //         child: const SakinaApp(),
    //       ),
    //     );
    //   },
    //   (exception, stackTrace) async {
    //     await Sentry.captureException(exception, stackTrace: stackTrace);
    //   },
    // );
    runApp(
      BlocProvider(
        create: (context) => getIt.get<ThemeCubit>(),
        child: const SakinaApp(),
      ),
    );
  } else {
    runApp(
      // child: DevicePreview(builder: (context) => const SakinaApp()),
      BlocProvider(
        create: (context) => getIt.get<ThemeCubit>(),
        child: const SakinaApp(),
      ),
    );
  }
}
