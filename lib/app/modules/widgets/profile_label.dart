// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileLabel extends StatelessWidget {
  final String image;
  final String? text;
  final Function? onpressed;
  const ProfileLabel({
    super.key,
    required this.image,
    this.text,
    this.onpressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: TextButton(
        onPressed: () {
          onpressed!();
        },
        child: Center(
          child: ListTile(
            leading: ClipOval(
              child: Image.asset(
                image,
                width: 30,
              ),
            ),
            title: Text(
              text!,
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    fontFamily: 'NunitoSans-Regular',
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                  ),
            ),
            trailing: Icon(
              CupertinoIcons.chevron_forward,
            ),
          ),
        ),
      ),
    );
  }
}
