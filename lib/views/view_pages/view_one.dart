import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class ViewOne extends StatelessWidget {
  const ViewOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Lottie.network(
          'https://assets9.lottiefiles.com/private_files/lf30_cldvedro.json',
        ),
      ),
    );
  }
}