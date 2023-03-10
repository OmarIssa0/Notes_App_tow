import 'package:flutter/material.dart';

import '../custom_text_filed.dart';
import 'custom_button.dart';

class ShowButtonSheet extends StatelessWidget {
  const ShowButtonSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: const [
          SizedBox(
            height: 12,
          ),
          CustomTextFormField(
            hint: 'العنوان الرئيسي',
            label: 'العنوان',
          ),
          SizedBox(
            height: 25,
          ),
          CustomTextFormField(
            hint: 'الملخص',
            label: 'الشرح',
            maxLines: 5,
          ),
          SizedBox(
            height: 25,
          ),
          Spacer(
            flex: 2,
          ),
          CustomButton(),
          Spacer(
            flex: 1,
          )
        ],
      ),
    );
  }
}

