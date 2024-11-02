import 'package:ecom_bloc/common/helper/navigator/app_navigator.dart';
import 'package:ecom_bloc/common/widgets/appbar/app_bar.dart';
import 'package:ecom_bloc/common/widgets/button/basic_app_button.dart';
import 'package:ecom_bloc/presentation/auth/pages/enter_password.dart';
import 'package:ecom_bloc/presentation/auth/pages/signup.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SigninPage extends StatelessWidget {
  const SigninPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(
        hideBack: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(
              height: 20,
            ),
            _emailField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _createAccount(context),
          ],
        ),
      ),
    );
  }

  Widget _signinText(BuildContext context) {
    return const Text(
      "Sign In",
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Widget _emailField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: "Enter Email"),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {
        AppNavigator.push(context, const EnterPassword());
      },
      title: 'Continue',
    );
  }

  Widget _createAccount(BuildContext context) {
    return RichText(
        text: TextSpan(children: [
      const TextSpan(
        text: "Don't have an account? ",
      ),
      TextSpan(
          text: "Sign Up",
          recognizer: TapGestureRecognizer()
            ..onTap = () {
              AppNavigator.pushReplacement(context, const SignupPage());
            },
          style: const TextStyle(fontWeight: FontWeight.bold))
    ]));
  }
}
