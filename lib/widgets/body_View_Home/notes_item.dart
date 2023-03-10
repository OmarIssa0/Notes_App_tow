import 'package:flutter/material.dart';
import 'package:notes_create/views/edit_notes_view.dart';

import 'alert_dialog_messages.dart';

class NotesViewItem extends StatelessWidget {
  const NotesViewItem({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const EditNotesView();
            },
          ),
        );
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          ListTile(
            title: const Padding(
              padding: EdgeInsets.only(top: 24, left: 12, bottom: 12),
              child: Text(
                'ملاحظة',
                style: TextStyle(fontSize: 24),
              ),
            ),
            subtitle: Padding(
              padding: const EdgeInsets.only(left: 12, bottom: 12),
              child: Text(
                'عمر جمال عيسى انا مطور تطيبقات',
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.white.withOpacity(.4),
                ),
              ),
            ),
            trailing: IconButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return const AlertDialogIconDelete();
                  },
                );
              },
              icon: const Icon(
                Icons.delete,
                size: 32,
                color: Colors.red,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              '10-03-2023',
              style: TextStyle(
                fontSize: 14,
                color: Colors.white.withOpacity(.4),
              ),
              textAlign: TextAlign.left,
            ),
          ),
        ],
      ),
    );
  }
}
