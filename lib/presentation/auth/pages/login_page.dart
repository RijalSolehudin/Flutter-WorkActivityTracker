import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/core/core.dart';
import 'package:mini_project_fe_mobile/presentation/auth/widgets/login_form.dart';
import 'package:mini_project_fe_mobile/presentation/auth/widgets/auth_toggle.dart';
import 'package:mini_project_fe_mobile/presentation/auth/widgets/sign_up_form.dart';

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
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
              isLogin ? const LoginForm() : const SignUpForm(),
              SwitchTema(),
            ],
          ),
        ),
      ),
    );
  }
}
