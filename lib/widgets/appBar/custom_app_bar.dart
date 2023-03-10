import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {super.key, required this.title, this.onPressed, this.icon});

  final String title;
  final void Function()? onPressed;
  final IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 40),
      child: Row(
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 24,
            ),
          ),
          const Spacer(),
          IconButton(
            onPressed: onPressed,
            icon: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                color: Colors.grey[800],
                borderRadius: BorderRadius.circular(9),
              ),
              child: Icon(
                icon,
                color: Colors.white,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
