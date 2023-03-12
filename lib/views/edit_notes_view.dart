import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:notes_create/widgets/appBar/custom_app_bar.dart';
import 'package:notes_create/widgets/custom_text_filed.dart';
import 'package:notes_create/widgets/showButtonSheet/text_button.dart';

class EditNotesView extends StatelessWidget {
  const EditNotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 40,
            ),
            IconButton(
              onPressed: () {
                Navigator.pop(context);
              },
              icon: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(9),
                  color: Colors.grey[800],
                ),
                child: const Icon(
                  Icons.keyboard_arrow_left,
                  size: 30,
                  color: Colors.white,
                ),
              ),
            ),
            const SizedBox(
              height: 75,
            ),
            const CustomTextFormField(
              hint: 'العنوان الرئيسي',
              label: 'العنوان',
            ),
            const SizedBox(
              height: 25,
            ),
            const CustomTextFormField(
              hint: 'الملخص',
              label: 'الشرح',
              maxLines: 5,
            ),
            const SizedBox(
              height: 55,
            ),
            Container(
              height: 55,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                color: const Color(0xffD33F49),
              ),
              child: const Center(
                child: Text("تعديل النص"),
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
