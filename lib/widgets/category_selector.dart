import 'package:flutter/material.dart';

class CategorySelector extends StatefulWidget {
  @override
  _CategorySelectorState createState() => _CategorySelectorState();
}

class _CategorySelectorState extends State<CategorySelector> {
  int _selectedIndex = 0;
  final List<String> categories = ['Messages', 'Groups', 'Contacts', 'Requests'];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.0,
      color: Theme.of(context).primaryColor,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index){
          return GestureDetector(
            onTap: (){
              setState(() {
                _selectedIndex = index;
              });
            },
            child: Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 20.0,
                vertical: 30.0
              ),
              child: Text(
                categories[index],
                style: TextStyle(
                  color: index == _selectedIndex ? Colors.white : Colors.white60,
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  letterSpacing: 1.2
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
