import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',       // BackEndTitle
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity),
      home: const MyHomePage(title: 'Application Build'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();}

class _MyHomePageState extends State<MyHomePage> {

  int userInfo = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Application Build'),),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
              ElevatedButton(
                child: Text('Click'),
                onPressed: (){
                  setState(() {
                    userInfo = userInfo+1;
                  });
                },
                ),
              Text('Result : $userInfo '),
              
              ElevatedButton(
                child: Text('Start Again'),
                onPressed :() => setState(() {
                  userInfo = 0;
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
