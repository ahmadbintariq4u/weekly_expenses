import 'package:flutter/material.dart';
import 'package:weekly_expenses/tabbar_material_widget.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(title: Text('App bar Title')),
        body: Text('Testing'),
        backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            print('click');
          },
          child: Icon(
            Icons.add,
            // color: Colors.amber.shade800,
          ),
        ),
        bottomNavigationBar: TabBarMaterialWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }
}
