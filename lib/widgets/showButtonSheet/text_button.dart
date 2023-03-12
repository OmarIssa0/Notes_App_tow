import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  const CustomTextButton(
      {super.key, required this.text, this.color, this.onTap, this.height});

  final String text;
  final Color? color;
  final Function()? onTap;
  final double? height;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // width: MediaQuery.of(context).size.width,
          height: 45,
          // height: height,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: color,
          ),
          child: Center(
            child: Text(text),
          ),
        ),
      ),
    );
  }
}
