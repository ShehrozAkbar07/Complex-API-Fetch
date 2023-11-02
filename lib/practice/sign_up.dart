import 'package:flutter/material.dart';
import 'package:http/http.dart';

class signupsignin extends StatefulWidget {
  @override
  State<signupsignin> createState() => _signupsigninState();
}

class _signupsigninState extends State<signupsignin> {
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController passwordcontroller = TextEditingController();

  void login(String email, password) async {
    try {
      Response response =
          await post(Uri.parse("https://reqres.in/api/register"), headers: {
        'email': email,
        'password': password,
      });

      if (response.statusCode == 200) {
        print("Account created");
      } else {
        print("failed");
      }
    } catch (e) {
      print(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextField(
            controller: emailcontroller,
            decoration: const InputDecoration(
              hintText: "Email",
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: passwordcontroller,
            decoration: const InputDecoration(
              hintText: "Password",
            ),
          ),
          const SizedBox(height: 20),
          GestureDetector(
              onTap: () {
                login(emailcontroller.text.toString(),
                    passwordcontroller.text.toString());
              },
              child: Container(
                height: 30,
                decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(20)),
                child: Text("Signup"),
              ))
        ],
      ),
    ));
  }
}
