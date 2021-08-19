import 'dart:convert';

import 'package:flutter/material.dart';
import 'PostDataApi.dart';
import 'userModel.dart';
import 'package:http/http.dart' as http;

class GetDataApi extends StatefulWidget {
  @override
  _GetDataApiState createState() => _GetDataApiState();
}

class _GetDataApiState extends State<GetDataApi> {
  get id => null;

  getUserData() async {
    var res = await http.get(
      Uri.parse("https://achmadhilmy-sanbercode.my.id/api/v1/profile"),
    );

    var jsonData = jsonDecode(res.body);

    List<User> users = [];

    for (var i in jsonData) {
      User user = User(i["name"], i["email"], i["address"]);
      users.add(user);
    }

    print(users.length);
    return users;
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    setState(() {
      getUserData();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Get Data"),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostDataApi()),
                );
              },
              child: Icon(
                Icons.add,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        child: Card(
          child: FutureBuilder(
            future: getUserData(),
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.data == null) {
                return Container(
                  child: Center(
                    child: Text("Loading..."),
                  ),
                );
              } else {
                return ListView.builder(
                  itemCount: snapshot.data!.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(snapshot.data![index].name),
                      subtitle: Text(snapshot.data![index].address),
                      trailing: Text(snapshot.data![index].email),
                    );
                  },
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
