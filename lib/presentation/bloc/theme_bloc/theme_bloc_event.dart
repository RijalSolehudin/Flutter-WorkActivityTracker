part of 'theme_bloc.dart';

@freezed
class ThemeBlocEvent with _$ThemeBlocEvent {
  const factory ThemeBlocEvent.started() = _Started;
  const factory ThemeBlocEvent.switchTheme(bool isdark) = _SwitchTheme;
}
