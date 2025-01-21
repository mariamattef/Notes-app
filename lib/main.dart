import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:notesapp/helper/constants.dart';
import 'package:notesapp/views/notes_view.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  await Hive.initFlutter();
 await Hive.openBox(kNotesBox);
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            brightness: Brightness.dark, fontFamily: 'Mochiy Pop One'),
        home: const NotesView(),
      ),
    );
  }
}
