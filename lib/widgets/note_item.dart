import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class NoteItem extends StatelessWidget {
  const NoteItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.r),
        color: const Color(0xffFFcc80),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 16, top: 24, bottom: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              title: Text(
                'Flutter Tips',
                style: TextStyle(
                  fontSize: 26.sp,
                  color: Colors.black,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 8, bottom: 8),
                child: Text(
                  'Note Description with instructions',
                  style: TextStyle(
                      fontSize: 17.sp, color: Colors.black.withOpacity(.5)),
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
                'December 21,2024',
                style: TextStyle(
                    fontSize: 14.sp, color: Colors.black.withOpacity(.5)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
