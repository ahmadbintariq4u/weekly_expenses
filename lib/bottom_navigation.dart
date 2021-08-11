import 'package:flutter/material.dart';

class TabBarMaterialWidget extends StatefulWidget {
  @override
  _TabBarMaterialWidgetState createState() => _TabBarMaterialWidgetState();
}

class _TabBarMaterialWidgetState extends State<TabBarMaterialWidget> {
  final placeHolder = Opacity(
      opacity: 0,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: IconButton(
          icon: Icon(Icons.no_cell),
          onPressed: null,
        ),
      ));
  @override
  Widget build(BuildContext context) {
    return Container(
      child: BottomAppBar(
        color: Colors.blue,
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        elevation: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            // buildTabItem(index: 0, icon: Icon(Icons.search)),
            // buildTabItem(index: 1, icon: Icon(Icons.margin_outlined)),
            // buildTabItem(index: 2, icon: Icon(Icons.account_circle)),
            // buildTabItem(index: 3, icon: Icon(Icons.settings)),
            placeHolder,
          ],
        ),
      ),
    );
  }

  Widget buildTabItem(
      {@required int index = 0,
      @required Icon icon = const Icon(Icons.circle)}) {
    return IconButton(
        onPressed: () {
          print(index);
        },
        icon: icon);
  }
}
