import 'package:flutter/material.dart';

import '../../../core/core.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void dispose() {
    fullNameController.dispose();
    emailController.dispose();
    passwordController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: fullNameController, label: "Full name"),
        const SpaceHeight(20),
        CustomTextField(controller: emailController, label: "Email"),
        const SpaceHeight(20),
        CustomTextField(controller: passwordController, label: "Password"),
        const SpaceHeight(30),
        Button.filled(onPressed: () {}, label: "sign Up")
      ],
    );
  }
}
