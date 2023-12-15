import 'package:flutter/material.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({super.key});

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  final _loginFormKey = GlobalKey<FormState>();
  final TextEditingController _usernameCtrl = TextEditingController();
  final TextEditingController _passwordCtrl = TextEditingController();
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Piyawat App"),
        backgroundColor: Color.fromARGB(255, 248, 206, 19),
      ),
      body: Form(
        key: _loginFormKey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your username.";
                  }
                  return null;
                },
                controller: _usernameCtrl,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    labelText: "Username",
                    prefixIcon: Icon(Icons.person),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0),
              child: TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return "Please enter your password.";
                  }
                  return null;
                },
                obscureText: true,
                obscuringCharacter: "*",
                controller: _passwordCtrl,
                decoration: InputDecoration(
                    labelText: "Password",
                    prefixIcon: Icon(Icons.password),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.black)),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(50),
                        borderSide: BorderSide(color: Colors.black))),
              ),
            ),
            SizedBox(height: 16),
            ElevatedButton(
                onPressed: () {
                  print("onPressed");
                  if (_loginFormKey.currentState!.validate()) {
                    print("Successful");
                  }
                },
                child: Text("Login"))
          ],
        ),
      ),
    );
  }
}
