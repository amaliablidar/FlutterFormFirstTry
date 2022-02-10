part of 'form_dart_bloc.dart';

@immutable
abstract class FormDartEvent extends Equatable {
  const FormDartEvent();
  @override
  List<Object?> get props => [];
}

class QuestionFetched extends FormDartEvent{
}

class FormSubmitted extends FormDartEvent{
}
