import 'package:flutter/material.dart';
import 'package:mini_project_fe_mobile/presentation/auth/dialog/auth_dialog.dart';
import 'package:mini_project_fe_mobile/presentation/home/pages/main_page.dart';

import '../../../core/core.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({super.key});

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  bool isLogin = true;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void validateAndLogin() {
    String email = emailController.text.trim();
    String password = passwordController.text.trim();

    if (email.isEmpty && password.isEmpty) {
      setState(() {
        DialogHelper.authDialog(context, "Isi form terlebih dahulu");
      });
    } else if (email.isEmpty) {
      setState(() {
        DialogHelper.authDialog(context, "Isi email terlebih dahulu");
      });
    } else if (password.isEmpty) {
      setState(() {
        DialogHelper.authDialog(context, "Isi Password terlebih dahulu");
      });
    } else {
      setState(() {});
      context.push(const MainPage());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: emailController, label: "Email"),
        const SpaceHeight(20),
        CustomTextField(
          controller: passwordController,
          label: "Password",
          obscureText: true,
        ),
        const SpaceHeight(10),
        const SpaceHeight(10),
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
        const SpaceHeight(25),
        Button.filled(
          onPressed: validateAndLogin,
          label: "Login",
        ),
        const SpaceHeight(12),
      ],
    );
  }
}
