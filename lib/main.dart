import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/constants/colors.dart';
import 'package:mini_project_fe_mobile/presentation/auth/pages/login_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_fe_mobile/presentation/bloc/theme_bloc/theme_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
              darkTheme: AppColors.darkTheme,
              debugShowCheckedModeBanner: false,
              home: LoginPage());
        },
      ),
    );
  }
}
