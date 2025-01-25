import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/cubits/notes_cubit/notes_cubit.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/custom_app_bar.dart';
import 'package:notesapp/widgets/custom_text_form_field.dart';

class EditNotesview extends StatefulWidget {
  const EditNotesview({super.key, required this.note});
  final NoteModel note;

  @override
  State<EditNotesview> createState() => _EditNotesviewState();
}

class _EditNotesviewState extends State<EditNotesview> {
  String? title, content;
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
            CustomAppBar(
              icon: Icons.check,
              title: 'Edit Notes',
              onPressed: () {
                widget.note.title = title ?? widget.note.title;
                widget.note.subtitle = content ?? widget.note.subtitle;
                widget.note.save();
                BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                Navigator.pop(context);
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextFormField(
              hintText: widget.note.title,
              onChanged: (value) {
                title = value;
              },
            ),
            SizedBox(
              height: 16.h,
            ),
            CustomTextFormField(
              hintText: widget.note.subtitle,
              maxLines: 5,
              onChanged: (value) {
                content = value;
              },
            ),
          ],
        ),
      ),
    );
  }
}
