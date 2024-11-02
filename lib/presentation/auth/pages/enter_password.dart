import 'package:ecom_bloc/common/helper/navigator/app_navigator.dart';
import 'package:ecom_bloc/common/widgets/appbar/app_bar.dart';
import 'package:ecom_bloc/common/widgets/button/basic_app_button.dart';
import 'package:ecom_bloc/presentation/auth/pages/forgot_password.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class EnterPassword extends StatelessWidget {
  const EnterPassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const BasicAppbar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 40),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _signinText(context),
            const SizedBox(
              height: 20,
            ),
            _passwordField(context),
            const SizedBox(
              height: 20,
            ),
            _continueButton(context),
            const SizedBox(
              height: 20,
            ),
            _forgotPassword(context),
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

  Widget _passwordField(BuildContext context) {
    return const TextField(
      decoration: InputDecoration(hintText: "Enter Password"),
    );
  }

  Widget _continueButton(BuildContext context) {
    return BasicAppButton(
      onPressed: () {},
      title: 'Continue',
    );
  }

  Widget _forgotPassword(BuildContext context) {
    return RichText(text:
      TextSpan(children: [
        const TextSpan(
          text: "Forgot Password? ",
        ),
        TextSpan(
          text: "Reset",
          recognizer: TapGestureRecognizer()..onTap = () {
            AppNavigator.push(context, const ForgotPasswordPage());
          } ,
          style: const TextStyle(
            fontWeight: FontWeight.bold
          )
        )
      ])
    );
  }
}
