import 'package:flutter/material.dart';

import '../../../core/core.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomTextField(controller: emailController, label: "full name"),
        CustomTextField(controller: emailController, label: "email"),
        CustomTextField(controller: emailController, label: "Password"),
        Button.filled(onPressed: () {}, label: "sign Up")
      ],
    );
  }
}
