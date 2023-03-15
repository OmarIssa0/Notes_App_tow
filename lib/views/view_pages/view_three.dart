import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ViewThree extends StatelessWidget {
  const ViewThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets9.lottiefiles.com/packages/lf20_8m1mFX3g7x.json',
        ),
      ),
    );
  }
}
