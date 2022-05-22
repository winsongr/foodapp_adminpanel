import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String adminEmail = "";
  String adminPassword = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 42, 224, 215),
      body: Stack(
        children: [
          Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width * .5,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "image/admin.png",
                  ),
                  TextField(
                    onChanged: ((value) {
                      adminEmail = value;
                    }),
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pinkAccent,
                          width: 2,
                        ),
                      ),
                      hintText: "Email",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 252, 252, 252),
                      ),
                      icon: Icon(
                        Icons.email,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextField(
                    onChanged: ((value) {
                      adminPassword = value;
                    }),
                    obscureText: true,
                    style: const TextStyle(fontSize: 16, color: Colors.white),
                    decoration: const InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.deepOrangeAccent,
                          width: 2,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                          color: Colors.pinkAccent,
                          width: 2,
                        ),
                      ),
                      hintText: "Password",
                      hintStyle: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      icon: Icon(
                        Icons.admin_panel_settings,
                        color: Colors.cyan,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      padding: MaterialStateProperty.all(
                        const EdgeInsets.symmetric(
                          horizontal: 100,
                          vertical: 20,
                        ),
                      ),
                      backgroundColor:
                          MaterialStateProperty.all<Color>(Colors.cyan),
                      foregroundColor:
                          MaterialStateProperty.all<Color>(Colors.pinkAccent),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                        fontSize: 16,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
