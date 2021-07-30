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
          appBarTheme: AppBarTheme(
            backgroundColor: Color(0xff121212),
          ),
          bottomAppBarTheme: BottomAppBarTheme(color: Color(0xff121212)),
          floatingActionButtonTheme: FloatingActionButtonThemeData(
            backgroundColor: Color(0xff121212),
          )),
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
