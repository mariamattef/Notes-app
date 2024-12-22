import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 12.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.w),
        color: Colors.white.withOpacity(0.1),
      ),
      height: 46.h,
      width: 46.w,
      child: const Icon(
        Icons.search,
        size: 28,
      ),
    );
  }
}
