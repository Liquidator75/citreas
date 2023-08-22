// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class SmallSearchField extends StatefulWidget {
  final String hintText;

  SmallSearchField({required this.hintText});

  @override
  _SmallSearchFieldState createState() => _SmallSearchFieldState();
}

class _SmallSearchFieldState extends State<SmallSearchField> {
  late TextEditingController _textEditingController;

  @override
  void initState() {
    super.initState();
    _textEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 320,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(100.0),
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: [
          SizedBox(width: 8.0),
          Icon(Icons.search),
          SizedBox(width: 8.0),
          Expanded(
            child: TextField(
              controller: _textEditingController,
              style: TextStyle(
                color: Colors.black,
              ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                border: InputBorder.none,
              ),
              onChanged: (value) {
                // Handle text changes
              },
            ),
          ),
        ],
      ),
    );
  }
}
