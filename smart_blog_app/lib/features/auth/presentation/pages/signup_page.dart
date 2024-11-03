import 'package:flutter/material.dart';
import 'package:smart_blog_app/core/theme/app_pallete.dart';
import 'package:smart_blog_app/features/auth/presentation/widgets/auth_field.dart';
import 'package:smart_blog_app/features/auth/presentation/widgets/auth_gradient_button.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({super.key});

  @override
  State<SignupPage> createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign Up.',
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              AuthField(hintText: 'Name'),
              SizedBox(
                height: 15,
              ),
              AuthField(hintText: 'Email'),
              SizedBox(
                height: 15,
              ),
              AuthField(hintText: 'Password'),
              SizedBox(
                height: 20,
              ),
              AuthGradientButton(),
              SizedBox(
                height: 20,
              ),
              RichText(
                text: TextSpan(
                    text: "Don't have an account? ",
                    style: Theme.of(context).textTheme.titleMedium,
                    children: [
                      TextSpan(
                        text: 'Sign In',
                        style:
                            Theme.of(context).textTheme.titleMedium?.copyWith(
                                  color: AppPallete.gradient2,
                                  fontWeight: FontWeight.bold,
                                ),
                      ),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
