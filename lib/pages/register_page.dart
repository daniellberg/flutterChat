import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _passwordConfirmController = TextEditingController();

    final void Function()? onTap;

  RegisterPage({super.key, required this.onTap});

  //register method

  void register(){

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            //logo
            Icon(Icons.message,
                size: 60, color: Theme.of(context).colorScheme.primary),

            const SizedBox(height: 50),

            //welcome back message

            Text(
              "It's nice to have you with us!",
              style: TextStyle(
                color: Theme.of(context).colorScheme.primary,
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // email field

            MyTextField(
              hintText: "E-mail",
              obscure: false,
              controller: _emailController,
            ),

            SizedBox(height: 10),
            // email field

            MyTextField(
              hintText: "Password",
              obscure: true,
              controller: _passwordController,
            ),

            SizedBox(height: 10),

            MyTextField(
              hintText: "Confirm your password",
              obscure: true,
              controller: _passwordConfirmController,
            ),

            SizedBox(height: 25),

            MyButton(
              buttonText: "Register",
              onTap: register,
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Already a member? ",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                GestureDetector(
                  onTap: onTap,
                  child: Text(
                    "Login now!",
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
