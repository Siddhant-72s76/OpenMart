import 'package:flutter/material.dart';
import 'package:open_mart/widgets/custom_button.dart';
import 'package:open_mart/widgets/custom_textfield.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: const EdgeInsets.all(10),
          height: 400,
          decoration: BoxDecoration(
            border: Border.all(color: Colors.black),
            borderRadius: BorderRadius.circular(50),
          ),
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                textEditingController: _nameController,
                hintText: 'Name',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                textEditingController: _emailController,
                hintText: 'Email',
              ),
              const SizedBox(height: 20),
              CustomTextField(
                textEditingController: _passwordController,
                hintText: 'Password',
              ),
              const SizedBox(height: 20),
              CustomButton(
                text: 'Sign-Up',
                onTab: () {},
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  const Text('Already have Account?'),
                  TextButton(
                    onPressed: () {},
                    child: const Text('Sign-In'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
