import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_hud/flutter_hud.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:test_abu/src/core/injector.dart';
import 'package:test_abu/src/core/router.dart';
import 'package:test_abu/src/presenter/app/controller/app_cubit.dart';

void main() async {
  await initializeInjector();
  runApp(
    BlocProvider(
      create: (context) => AppCubit(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isAndroid) {
      SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
      ));
    }

    return MaterialApp.router(
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: const [
        Locale('id', 'ID'),
      ],
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
          secondary: Colors.orange,
          brightness: Brightness.light,
        ),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: routerConfig,
      builder: (_, child) => _builder(context, child),
    );
  }

  Widget _builder(BuildContext context, Widget? child) {
    return BlocBuilder<AppCubit, AppState>(
      buildWhen: (previous, current) => previous.loading != current.loading,
      builder: (context, state) {
        return WidgetHUD(
          builder: (context, child) => child!,
          showHUD: state.loading,
          child: child!,
        );
      },
    );
  }
}
