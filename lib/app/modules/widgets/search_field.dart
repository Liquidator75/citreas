// ignore_for_file: prefer_const_constructors

import 'package:citreas/config/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  late FocusNode _searchFocusNode;

  @override
  void initState() {
    super.initState();
    _searchFocusNode = FocusNode();
  }

  @override
  void dispose() {
    _searchFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            child: TextField(
              focusNode: _searchFocusNode,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                filled: false,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    color: _searchFocusNode.hasFocus
                        ? Colors.blue
                        : Colors.black.withOpacity(0.5),
                    width: 1.0,
                  ),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4),
                  borderSide: BorderSide(
                    color: textColor,
                    width: 0.0,
                  ),
                ),
                hintText: 'Search for an asset',
                prefixIcon: Icon(CupertinoIcons.search),
              ),
              onChanged: (value) {
                // Handle text changes
              },
            ),
          ),
        ),
      ],
    );
  }
}
