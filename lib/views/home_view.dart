import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../widgets/body_View_Home/Notes_view_home_Body.dart';
import '../widgets/showButtonSheet/show_button_sheet.dart';

class NotesHomeView extends StatelessWidget {
  const NotesHomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffD33F49),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return const ShowButtonSheet();
            },
          );
        },
        child: const Icon(
          FontAwesomeIcons.pencil,
          color: Colors.white,
        ),
      ),
      body: const NotesHomeViewBody(),
    );
  }
}
