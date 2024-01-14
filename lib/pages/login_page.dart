import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {

    final TextEditingController _emailController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  //login method
  void login(){
    //
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
            Icon(
              Icons.message,
              size: 60, color: Theme.of(context).colorScheme.primary
            ),

            const SizedBox(height: 50),

            //welcome back message

            Text(
              "Welcome back!",
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

            SizedBox(height: 25),

            MyButton(
              buttonText: "Login",
              onTap: login,
            ),

            SizedBox(height: 25),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Not a member? ",
                style: 
                  TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                  ),
                ),
                Text("Register now!", 
                style: 
                TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Theme.of(context).colorScheme.primary,
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
