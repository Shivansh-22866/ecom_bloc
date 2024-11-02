import 'package:ecom_bloc/core/configs/theme/app_theme.dart';
import 'package:ecom_bloc/presentation/splash/bloc/splash_cubit.dart';
import 'package:ecom_bloc/presentation/splash/pages/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SplashCubit()..appStarted(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: AppTheme.appTheme,
        home: const SplashPage(),
      ),
    );
  }
}