import 'package:flutter/material.dart';
import 'package:reactive_forms_annotations/reactive_forms_annotations.dart';
import 'package:reactive_forms_bug/login.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginFormBuilder(
        builder: (context, formModel, child) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              ReactiveTextField(
                formControl: formModel.emailControl,
                decoration: const InputDecoration(
                  labelText: 'Email',
                ),
              ),
              ReactiveTextField(
                formControl: formModel.passwordControl,
                decoration: const InputDecoration(
                  labelText: 'Password',
                ),
              ),
              ReactiveTextField(
                formControl: formModel.confirmPasswordControl,
                decoration: const InputDecoration(
                  labelText: 'Confirm Password',
                ),
              ),
              ReactiveLoginFormConsumer(
                builder: (context, formModel, child) => ElevatedButton(
                  onPressed: formModel.form.valid
                      ? () {
                          debugPrint('Form is valid');
                        }
                      : null,
                  child: const Text('Submit'),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
