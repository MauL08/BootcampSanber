import 'package:flutter/material.dart';
import 'package:sanberappflutter/Quiz3/MainApp.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.all(10),
              margin: const EdgeInsets.only(top: 40),
              child: Text(
                "Quiz 3",
                style: TextStyle(
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                    fontSize: 30),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Image.network(
                "https://miro.medium.com/max/1000/1*ilC2Aqp5sZd1wi0CopD1Hw.png",
                height: 100,
                width: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10),
              child: TextField(
                controller: nameController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Username "),
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(10, 10, 10, 0),
              child: TextField(
                obscureText: true,
                controller: passwordController,
                decoration: InputDecoration(
                    border: OutlineInputBorder(), labelText: "Password"),
              ),
            ),
            TextButton(onPressed: () {}, child: Text("Forgot Password")),
            Container(
              height: 50,
              padding: EdgeInsets.fromLTRB(10, 0, 10, 0),
              child: ElevatedButton(
                style: raisedButtonStyle,
                child: Text("Login"),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return MainApp();
                      },
                    ),
                  );
                },
              ),
            ),
            Container(
              child: Row(
                children: <Widget>[
                  Text("   Does not have account?"),
                  TextButton(
                      child: Text(
                        "Sign In",
                        style: TextStyle(fontSize: 16),
                      ),
                      onPressed: () {})
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

final ButtonStyle raisedButtonStyle = ElevatedButton.styleFrom(
  onPrimary: Colors.grey[300],
  primary: Colors.blue[300],
  minimumSize: Size(88, 36),
  padding: EdgeInsets.symmetric(horizontal: 16),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(6)),
  ),
);
