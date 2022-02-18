import 'package:flutter/material.dart';
import 'Donations.dart';
import 'user.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const MyHomePage(
              title: '',
            ),
        '/secondscreen': (context) => DonationsPage(),
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text("Animal Rescue Kleberg"), //title of app
          backgroundColor:
              Color.fromARGB(255, 240, 120, 40), //background color of app bar
          brightness: Brightness
              .dark, //redAccent is darker color so set brightness to dark
          elevation: 5.0, //elevation value of appbar
          actions: [
            //actions widget in appbar
            IconButton(
                icon: const Icon(Icons.account_circle_outlined),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfilePage()),
                  );
                }),
          ],
        ),
        body: Center(
            child: RaisedButton(
                child: Text("Donations"), //click me button
                onPressed: () {
                  Navigator.pushNamed(context, "/secondscreen");
                })));
  }
}
