import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({super.key});

  @override
  State<LearnFlutterPage> createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Learn Flutter"),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Image.asset('images/mulle.jpg'),
          SizedBox(height: 10),
          Divider(color: Colors.black),
          Container(
            margin: EdgeInsets.all(10),
            padding: EdgeInsets.all(10),
            color: Colors.black,
            width: double.infinity,
            child: Center(
              child: Text(
                "this is a text widget",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              debugPrint("Elevated Button");
            },
            child: Text("Elevated button"),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint("Outlit Button");
            },
            child: Text("Outlit button"),
          ),
          TextButton(
            onPressed: () {
              debugPrint("text Button");
            },
            child: Text("tex button"),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [Icon(Icons.local_fire_department, color: Colors.red)],
          ),
          Text("this is a row widget"),
        ],
      ),
    );
  }
}
