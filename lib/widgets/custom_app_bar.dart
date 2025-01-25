import 'package:flutter/material.dart';
import 'package:notesapp/widgets/custom_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar(
      {required this.icon, required this.title, super.key, this.onPressed});
  final IconData icon;
  final String title;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title,
            style: const TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
        CustomIcon(
          icon: icon,
          onPressed: onPressed,
        ),
      ],
    );
  }
}
