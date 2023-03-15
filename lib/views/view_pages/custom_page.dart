import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ViewPageWelcome extends StatelessWidget {
  const ViewPageWelcome({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        // crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width / 10,
          ),
          Lottie.network(
            url,
          ),
          // Text("Welcome To Do App"),
          SizedBox(
            height: MediaQuery.of(context).size.width / 10,
          ),
        ],
      ),
    );
  }
}
