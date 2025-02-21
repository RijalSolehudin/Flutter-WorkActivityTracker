import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/main_page.dart';

import '../../../core/core.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: emailController, label: "Email"),
        const SpaceHeight(8),
        CustomTextField(
          controller: emailController,
          label: "Password",
          obscureText: true,
        ),
        const SpaceHeight(8),
        GestureDetector(
          onTap: () {},
          child: SizedBox(
            width: context.deviceWidth,
            child: const Align(
              alignment: Alignment.centerRight,
              child: Text(
                "Forgot Password?",
                style: TextStyle(fontSize: 14, color: AppColors.gray),
              ),
            ),
          ),
        ),
        const SpaceHeight(8),
        Button.filled(
            onPressed: () {
              context.pushReplacement(const MainPage());
            },
            label: "login"),
        const SpaceHeight(8),
        SizedBox(
          width: context.deviceWidth,
          child: Row(
            children: [
              const Text("Dont have account?"),
              GestureDetector(
                  onTap: () {},
                  child: const Text("Sign Up",
                      style: TextStyle(color: AppColors.gray))),
            ],
          ),
        )
      ],
    );
  }
}
