import 'package:chat/auth/auth_service.dart';
import 'package:chat/components/my_button.dart';
import 'package:chat/components/my_textfield.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  final void Function()? onTap;

  LoginPage({super.key, required this.onTap});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  late final TextEditingController _emailController;
  late final TextEditingController _passwordController;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
  }

  //login method
  void login() async {
    //auth service
    final authService = AuthService();

// print(_emailController.text);

    final email = _emailController.text;
    final password = _passwordController.text;

    await authService.signInwithEmailPassword(email, password);
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
              "Welcome back!",
              style: TextStyle(
                  // color: Theme.of(context).colorScheme.primary,
                  color: Colors.indigo.shade200,
                  fontSize: 16,
                  fontWeight: FontWeight.w500),
            ),

            const SizedBox(height: 25),

            // email field

            MyTextField(
              hintText: "E-mail",
              obscure: false,
              controller: _emailController,
            ),

            SizedBox(height: 10),
            // password field

            MyTextField(
              hintText: "Password",
              obscure: true,
              controller: _passwordController,
            ),

            SizedBox(height: 25),

            SizedBox(
              height: 35,
              width: 100,
              child: FilledButton(
                onPressed: login,
                child: Text(
                  "Sign in",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                      Colors.grey.shade200), // Background color
                  foregroundColor: MaterialStateProperty.all(
                      Colors.indigo.shade200), // Text color
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0), // Border radius
                    ),
                  ),
                ),
              ),
            ),

            SizedBox(height: 25),

            Flexible(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member? ",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  GestureDetector(
                    onTap: widget.onTap,
                    child: Text(
                      "Register now!",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        // color: Theme.of(context).colorScheme.primary,
                        color: Colors.indigo.shade200,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
