import 'package:flutter/material.dart';
import 'package:weekly_expenses/main_screen.dart';
import 'package:weekly_expenses/themes.dart';
import 'bottom_navigation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Weekly Expenses Tracker',
      theme: Themes.getLightTheme(),
      darkTheme: Themes.getDarkTheme(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        extendBody: true,
        appBar: AppBar(
          title: Text('Weekly Expenses Tracker'),
          elevation: 5,
          leading: Icon(Icons.menu),
        ),
        body: HomePage(),
        // backgroundColor: Colors.blue,
        floatingActionButton: FloatingActionButton(
          hoverElevation: 20,
          onPressed: () {
            print('click');
          },
          child: Icon(
            Icons.add,
            size: 35,
            color: Colors.white,
          ),
        ),
        bottomNavigationBar: TabBarMaterialWidget(),
        floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      ),
    );
  }
}
