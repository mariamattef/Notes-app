
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/helper/constants.dart';
import 'package:notesapp/models/note_model.dart';
import 'package:notesapp/widgets/color_list_view.dart';

class EditNotesColorsList extends StatefulWidget {
  const EditNotesColorsList({super.key, required this.note});
  final NoteModel note;
  @override
  State<EditNotesColorsList> createState() => _EditNotesColorsListState();
}

class _EditNotesColorsListState extends State<EditNotesColorsList> {
   late int currentIndex;
  @override
  void initState() {
    currentIndex = kColors.indexOf(Color(widget.note.color));
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 2.h,
      child: ListView.builder(
        itemCount: kColors.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: GestureDetector(
                onTap: () {
                  currentIndex = index;
                  widget.note.color = kColors[index].value;
                  setState(() {});
                },
                child: ColorItem(
                  isActive: currentIndex == index,
                  color: kColors[index],
                )),
          );
        },
      ),
    );
  }
}
