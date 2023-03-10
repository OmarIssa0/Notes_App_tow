import 'package:flutter/material.dart';

import '../appBar/custom_app_bar.dart';

class NotesHomeViewBody extends StatelessWidget {
  const NotesHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppBar(
      title: 'مذكرات',
      icon: Icons.search,
    );
  }
}
