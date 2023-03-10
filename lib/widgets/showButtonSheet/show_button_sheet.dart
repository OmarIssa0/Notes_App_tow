import 'package:flutter/material.dart';

import '../custom_text_filed.dart';
import 'custom_button.dart';

class ShowButtonSheet extends StatefulWidget {
  const ShowButtonSheet({super.key});

  @override
  State<ShowButtonSheet> createState() => _ShowButtonSheetState();
}

class _ShowButtonSheetState extends State<ShowButtonSheet> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 16,
        top: 16,
        right: 16,
        bottom: MediaQuery.of(context).viewInsets.bottom,
      ),
      child: SingleChildScrollView(
        child: Form(
          key: formKey,
          autovalidateMode: autovalidateMode,
          child: Column(
            children: [
              const SizedBox(
                height: 12,
              ),
              CustomTextFormField(
                hint: 'العنوان الرئيسي',
                label: 'العنوان',
                onSaved: (p0) {
                  title = p0;
                },
              ),
              const SizedBox(
                height: 25,
              ),
              CustomTextFormField(
                onSaved: (p0) {
                  subtitle = p0;
                },
                hint: 'الملخص',
                label: 'الشرح',
                maxLines: 6,
              ),
              const SizedBox(
                height: 45,
              ),
              CustomButton(
                onTap: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                  } else {
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
