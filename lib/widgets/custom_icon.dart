import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({required this.icon, super.key, this.onPressed});
  final IconData icon;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.w),
        color: Colors.white.withOpacity(0.1),
      ),
      height: 46.h,
      width: 46.w,
      child: IconButton(
        iconSize: 28,
        icon: Icon(icon),
        onPressed: onPressed,
      ),
    );
  }
}
