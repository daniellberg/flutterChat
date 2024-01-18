import 'package:chat/auth/auth_service.dart';
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  void logout () {
    final _auth = AuthService();
    _auth.signOut();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        actions: [
          IconButton(onPressed: logout, icon: Icon(Icons.logout_sharp))
        ],
      ),
    );
  }
}