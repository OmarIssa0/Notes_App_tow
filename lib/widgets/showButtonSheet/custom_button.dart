import 'package:flutter/cupertino.dart';
import 'show_button_sheet.dart';

import 'text_button.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onTap});


final Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        TextButton(
          text: 'الغاء',
          onTap: () {
            Navigator.pop(context);
          },
        ),
        TextButton(
          text: 'اضافة',
          color: const Color(0xffD33F49),
          onTap: onTap,
        ),
      ],
    );
  }
}
