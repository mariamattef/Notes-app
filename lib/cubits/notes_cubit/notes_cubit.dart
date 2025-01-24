import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:meta/meta.dart';
import 'package:notesapp/helper/constants.dart';
import 'package:notesapp/models/note_model.dart';

part 'notes_state.dart';

class NotesCubit extends Cubit<NotesState> {
  List<NoteModel>? notes;
  NotesCubit() : super(NotesInitial()) {
    // fetchAllNotes();
  }
  fetchAllNotes() async {
    var notesbox = Hive.box<NoteModel>(kNotes);
    notes = notesbox.values.toList();
  }
}
