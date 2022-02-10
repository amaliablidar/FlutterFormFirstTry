
part of 'form_dart_bloc.dart';

enum FormStatus { initial, success, failure,submitted }

class FormDartState extends Equatable {
  const FormDartState({
    this.status = FormStatus.initial,
    this.questionList=const <String>[],
  });

  final FormStatus status;
  final List<String> questionList;

  FormDartState copyWith({
    FormStatus? status,
    List<String>? questions,
  }) {
    return FormDartState(
      status: status ?? this.status,
      questionList: questions ?? questionList,
    );
  }

  @override
  List<Object?> get props => [status,questionList];
}


