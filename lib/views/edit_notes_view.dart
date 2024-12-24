import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_field.dart';

class EditNotes extends StatelessWidget {
  const EditNotes({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          children: [
            SizedBox(
              height: 50.h,
            ),
            const CustomAppBar(
              icon: Icons.check,
              title: 'Edit Notes',
            ),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextField(hintText: 'title'),
            SizedBox(
              height: 16.h,
            ),
            const CustomTextField(
              hintText: 'content',
              maxLines: 5,
            ),
          ],
        ),
      ),
    );
  }
}
