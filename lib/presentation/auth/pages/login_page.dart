import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_project_fe_mobile/core/components/spaces.dart';
import 'package:mini_project_fe_mobile/presentation/auth/widgets/login_form.dart';
import 'package:mini_project_fe_mobile/presentation/auth/widgets/auth_toggle.dart';
import 'package:mini_project_fe_mobile/presentation/auth/widgets/sign_up_form.dart';
import 'package:mini_project_fe_mobile/presentation/bloc/theme_bloc/theme_bloc.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isLogin = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Switch(
                value: context.read<ThemeBloc>().state == ThemeMode.dark,
                onChanged: (value) {
                  context
                      .read<ThemeBloc>()
                      .add(ThemeBlocEvent.switchTheme(value));
                },
              ),
              const Text(
                "Work Focus",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.w600),
              ),
              const Text(
                "Track your activity work",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
              ),
              const SpaceHeight(50),
              AuthToggle(
                title: "Login",
                title2: "Sign up",
                isSelected: isLogin,
                onToggle: () {
                  setState(() {
                    isLogin = !isLogin;
                  });
                },
              ),
              const SpaceHeight(10),
              isLogin ? const LoginForm() : const SignUpForm()
            ],
          ),
        ),
      ),
    );
  }
}
