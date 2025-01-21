part of 'add_notes_cubit.dart';

@immutable
sealed class AddNotesState {}

final class AddNotesInitial extends AddNotesState {}
final class AddNoteLoading extends AddNotesState {}
final class AddNoteSuccess extends AddNotesState {}
final class AddNoteFailure extends AddNotesState {
  final String errorMessage;
  AddNoteFailure({required this.errorMessage});
}

