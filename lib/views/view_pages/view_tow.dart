
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ViewToo extends StatelessWidget {
  const ViewToo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets9.lottiefiles.com/packages/lf20_pcfclxy8.json',
        ),
      ),
    );
  }
}