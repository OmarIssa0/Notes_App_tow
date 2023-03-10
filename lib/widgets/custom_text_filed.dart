import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key,
    this.onChanged,
    this.onSaved,
    this.maxLines = 1,
    required this.hint,
    required this.label,
  });

  final Function(String)? onChanged;
  final Function(String?)? onSaved;
  final int maxLines;
  final String hint;
  final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      onSaved: onSaved,
      validator: (value) {},
      maxLines: maxLines,
      cursorColor: const Color(0xffD33F49),
      decoration: InputDecoration(
          enabledBorder: BuilderBorder(const Color(0xffD33F49)),
          focusedBorder: BuilderBorder(const Color(0xffD33F49)),
          hintText: hint,
          border: BuilderBorder(),
          label: Text(label),
          labelStyle: const TextStyle(color: Color(0xffD33F49))),
    );
  }
}

OutlineInputBorder BuilderBorder([color]) {
  return OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(
      color: color ?? Colors.white,
    ),
  );
}
