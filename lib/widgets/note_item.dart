import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/views/edit_notes_view.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const EditNotes()));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.r),
          color:  Color(note.color)
          //  Color(note.color),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              ListTile(
                title: Text(
                  note.title,
                  style: TextStyle(
                    fontSize: 26.sp,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top: 8, bottom: 8),
                  child: Text(
                    note.subtitle,
                    style: TextStyle(
                        fontSize: 17.sp, color: Colors.black.withAlpha(130)),
                  ),
                ),
                trailing: Icon(
                  Icons.delete,
                  size: 28.sp,
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 24),
                child: Text(
                  note.date,
                  style: TextStyle(
                      fontSize: 14.sp, color: Colors.black.withAlpha(130)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
