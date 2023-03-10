import 'package:flutter/material.dart';

import '../appBar/custom_app_bar.dart';
import 'notes_item.dart';

class NotesHomeViewBody extends StatelessWidget {
  const NotesHomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.rtl,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            const CustomAppBar(
              title: 'مذكرات',
              icon: Icons.search,
            ),
            Container(
              decoration: BoxDecoration(
                color: const Color.fromARGB(255, 10, 9, 9),
                borderRadius: BorderRadius.circular(16),
              ),
              child: const NotesViewItem(),
            ),
          ],
        ),
      ),
    );
  }
}
