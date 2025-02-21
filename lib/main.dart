import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/constants/colors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_fe_mobile/presentation/auth/pages/login_page.dart';
import 'package:mini_project_fe_mobile/presentation/home/bloc/theme_bloc/theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeBloc(),
      child: BlocBuilder<ThemeBloc, ThemeMode>(
        builder: (context, state) {
          return MaterialApp(
              title: 'Flutter Demo',
              theme: ThemeData(
                  colorScheme: AppColors.lightColorScheme, fontFamily: 'Inter'),
              themeMode: state,
              darkTheme: ThemeData(
                  colorScheme: AppColors.darkColorScheme, fontFamily: 'Inter'),
              debugShowCheckedModeBanner: false,
              home: const LoginPage());
        },
      ),
    );
  }
}
