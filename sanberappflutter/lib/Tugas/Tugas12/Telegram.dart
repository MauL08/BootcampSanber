import 'package:flutter/material.dart';
import 'package:sanberappflutter/Tugas/Tugas12/DrawerScreen.dart';
import 'Chart_model.dart';

class Telegram extends StatefulWidget {
  @override
  _TelegramState createState() => _TelegramState();
}

class _TelegramState extends State<Telegram> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Telegram"),
        actions: [
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Icon(Icons.search),
          )
        ],
      ),
      drawer: DrawerScreen(),
      body: ListView.separated(
        itemBuilder: (context, index) {
          return ListTile(
            leading: CircleAvatar(
              radius: 28,
              backgroundImage: NetworkImage(items[index].profileUrl),
            ),
            title: Text(
              items[index].name,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(items[index].message),
            trailing: Text(items[index].time),
          );
        },
        separatorBuilder: (context, index) {
          return Divider();
        },
        itemCount: items.length,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.create, color: Colors.white),
        backgroundColor: Color(0xFF65a9e0),
        onPressed: () {},
      ),
    );
  }
}
