import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:notesapp/cubits/add_notes_cubit/cubit/add_notes_cubit.dart';

import '../helper/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({super.key, required this.isActive, required this.color});
  final bool isActive;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return isActive
        ? CircleAvatar(
            backgroundColor: Colors.white,
            radius: 38,
            child: CircleAvatar(
              radius: 33,
              backgroundColor: color,
            ),
          )
        :  CircleAvatar(
            radius: 38,
            backgroundColor: color,
          );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  int currentIndex = 0;
  
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
                  BlocProvider.of<AddNotesCubit>(context).color=kColors[index];
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
