import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pestaña Tab',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        // This is the theme of your application.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
} // MyApp

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
} // MyHomePage + StatefulWidget

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.purple,
          bottom: TabBar(
            indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(50), // Creates border
                color: Colors.black), //Change background color from here
            tabs: [
              Tab(icon: Icon(Icons.account_balance_outlined)),
              Tab(icon: Icon(Icons.add_a_photo_outlined)),
              Tab(icon: Icon(Icons.add_box_outlined)),
              Tab(icon: Icon(Icons.ad_units_outlined)),
            ],
          ),
          title: Text('Tabs Natalia Hernandez'),
        ),
        body: TabBarView(
          children: [
            Icon(Icons.account_balance_outlined, size: 350),
            Icon(Icons.add_a_photo_outlined, size: 350),
            Icon(Icons.add_box_outlined, size: 350),
            Icon(Icons.ad_units_outlined, size: 350),
          ],
        ),
      ),
    );
  }
}
