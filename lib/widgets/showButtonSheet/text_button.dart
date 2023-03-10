import 'package:flutter/material.dart';

class TextButton extends StatelessWidget {
  const TextButton({super.key, required this.text, this.color, this.onTap});

  final String text;
  final Color? color;
  final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          // width: MediaQuery.of(context).size.width,
          height: 45,
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
