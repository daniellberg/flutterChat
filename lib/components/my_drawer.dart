import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Theme.of(context).colorScheme.background,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            children: [
              //logo
              DrawerHeader(
                child: Center(
                  child: Icon(
                    Icons.message,
                    color: Colors.indigo.shade600,
                    size: 40,
                  ),
                ),
              ),

              //home
              Padding(
                padding: const EdgeInsets.only(left: 25.0),
                child: ListTile(
                  title: Text(
                    "H O M E",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 14,
                    ),
                  ),
                  leading: Icon(Icons.home_rounded),
                  onTap: () {},
                ),
              ),

              //settings
              Padding(
                padding: const EdgeInsets.only(left: 25.0, bottom: 25),
                child: ListTile(
                  title: Text(
                    "S E T T I N G S",
                    style: TextStyle(
                      color: Colors.indigo,
                      fontSize: 14,
                    ),
                  ),
                  leading: Icon(Icons.settings),
                  onTap: () {},
                ),
              ),
            ],
          ),

          //logout
          Padding(
            padding: const EdgeInsets.only(left: 25.0),
            child: ListTile(
              title: Text(
                "L O G O U T",
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 14,
                ),
              ),
              leading: Icon(Icons.exit_to_app_rounded),
              onTap: () {},
            ),
          ),
        ],
      ),
    );
  }
}
