import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Column(
        children: [
          SizedBox(
            height: 32.h,
          ),
          const CustomTextField(hintText: 'Title'),
          SizedBox(
            height: 16.h,
          ),
          const CustomTextField(hintText: 'Content', maxLines: 6),
        ],
      ),
    );
  }
}
