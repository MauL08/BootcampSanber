import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(icon: Icon(Icons.notifications), onPressed: () {}),
                  IconButton(icon: Icon(Icons.extension), onPressed: () {})
                ],
              ),
              SizedBox(height: 20),
              Text.rich(
                TextSpan(
                  children: <TextSpan>[
                    TextSpan(
                      text: "Welcome, \n",
                      style: TextStyle(color: Colors.blue[300]),
                    ),
                    TextSpan(
                      text: "Hilmy \n",
                      style: TextStyle(color: Colors.blue[900]),
                    ),
                  ],
                ),
                style: TextStyle(fontSize: 30),
              ),
              SizedBox(height: 10),
              TextField(
                decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 18),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)),
                    hintText: "Search"),
              ),
              SizedBox(height: 20),
              Text(
                "Recomended Place",
                style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
              ),
              Container(
                width: double.infinity,
                height: 500.0,
                child: GridView.builder(
                  itemCount: 6,
                  physics: NeverScrollableScrollPhysics(),
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisSpacing: 10,
                    crossAxisCount: 2,
                  ),
                  padding: EdgeInsets.fromLTRB(0, 1.0, 0, 1.0),
                  shrinkWrap: true,
                  itemBuilder: (context, index) {
                    return Image.asset(images[index]);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

final countries = ["Tokyo", "Berlin", "Roma", "Monas", "London", "Paris"];

List<String> images = [
  'assets/img/Tokyo.png',
  'assets/img/Berlin.png',
  'assets/img/Roma.png',
  'assets/img/Monas.png',
  'assets/img/London.png',
  'assets/img/Paris.png',
];
