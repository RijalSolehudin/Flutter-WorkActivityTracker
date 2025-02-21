import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'theme_bloc_event.dart';
part 'theme_bloc_state.dart';
part 'theme_bloc.freezed.dart';

class ThemeBloc extends Bloc<ThemeBlocEvent, ThemeMode> {
  ThemeBloc() : super(ThemeMode.light) {
    on<_SwitchTheme>((event, emit) {
      emit(event.isdark ? ThemeMode.dark : ThemeMode.light);
    });
  }
}
