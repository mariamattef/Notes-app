import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/constans.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField(
      {this.maxLines = 1, required this.hintText, super.key, this.onSaved, this.onChanged});
  final String? hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
 final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'Field is required';
        }
        return null;
      },
      onSaved: onSaved,
      onChanged: onChanged,
      maxLines: maxLines,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
        hintText: hintText,
        border: buildBorder(),
        enabledBorder: buildBorder(),
        focusedBorder: buildBorder(
          color: kPrimaryColor,
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder({color}) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.r),
      borderSide: BorderSide(
        color: color ?? Colors.white,
      ),
    );
  }
}
