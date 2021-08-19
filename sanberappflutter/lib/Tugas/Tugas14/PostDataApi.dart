import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'userModel.dart';
import 'GetDataApi.dart';

class PostDataApi extends StatefulWidget {
  final String title = "";
  @override
  _PostDataApiState createState() => _PostDataApiState();
}

Future<UserModel?> createUser(String name, String email, String address) async {
  var url = Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile");
  final res = await http.post(
    url,
    body: {
      "name": name,
      "email": email,
      "address": address,
    },
  );

  if (res.statusCode == 201) {
    final String resString = res.body;
    return userModelFromJSON(resString);
  } else {
    return null;
  }
}

class _PostDataApiState extends State<PostDataApi> {
  UserModel? _user;
  final TextEditingController nameControl = TextEditingController();
  final TextEditingController emailControl = TextEditingController();
  final TextEditingController addressControl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Post Data"),
      ),
      body: Container(
        padding: EdgeInsets.all(32.0),
        child: Column(
          children: [
            TextField(
              controller: nameControl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Nama Lengkap",
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: emailControl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Email",
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            TextField(
              controller: addressControl,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: "Address",
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final String name = nameControl.text;
          final String email = emailControl.text;
          final String address = addressControl.text;
          final UserModel? user = await createUser(name, email, address);
          setState(() {
            if (user != null) {
              _user = user;
            }
          });
          Navigator.of(context).pop(GetDataApi());
        },
        tooltip: "Increment",
        child: Icon(Icons.add),
      ),
    );
  }
}
