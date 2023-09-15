// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class LoadingButtin extends StatefulWidget {
  final double? width;
  final double? height;
  final double? cwidth;
  final double? cheight;
  final String? text;
  final Color? color;
  final String? load;
  final Function? onPressed;
  const LoadingButtin({
    Key? key,
    this.text,
    this.onPressed,
    this.load,
    this.width,
    this.height,
    this.cwidth,
    this.cheight,
    this.color,
    required RxBool isLoading,
  }) : super(key: key);

  @override
  _LoadingButtinState createState() => _LoadingButtinState();
}

class _LoadingButtinState extends State<LoadingButtin> {
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints.tightFor(
          width: widget.width, //350
          height: widget.height // 55,
          ),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          //splashFactory
          elevation: 1,
          padding: EdgeInsets.symmetric(vertical: 10, horizontal: 30),
          backgroundColor: widget.color,
        ),
        onPressed: () async {
          if (isLoading) return;
          setState(
            () => isLoading = true,
          );
          await Future.delayed(Duration(seconds: 5));
          setState(
            () => isLoading = false,
          );

          widget.onPressed!();
        },
        child: isLoading
            ? Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 25,
                    height: 25,
                    child: CircularProgressIndicator(
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(
                    width: 24,
                  ),
                  Text(
                    widget.load!,
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: 'NexaRegular',
                      color: Colors.white,
                      fontWeight: FontWeight.w500,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              )
            : Text(
                widget.text!,
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'NexaBold',
                  color: Colors.white,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
      ),
    );
  }
}
