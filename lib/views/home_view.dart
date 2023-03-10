import 'package:flutter/material.dart';

import '../widgets/body_View_Home/Notes_view_home_Body.dart';

class NotesHomeView extends StatelessWidget {
  const NotesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: NotesHomeViewBody(),
    );
  }
}
