import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation/home/bloc/theme_bloc/theme_bloc.dart';

class SwitchTema extends StatelessWidget {
  const SwitchTema({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeBloc, ThemeMode>(
      builder: (context, state) {
        return SizedBox(
          height: 20,
          child: Switch(
            value: context.read<ThemeBloc>().state == ThemeMode.dark,
            onChanged: (value) {
              context.read<ThemeBloc>().add(ThemeBlocEvent.switchTheme(value));
            },
          ),
        );
      },
    );
  }
}
