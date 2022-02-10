import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/animation.dart';
import 'package:meta/meta.dart';
import 'package:try_frm/dataProvider/model/question.dart';
import 'package:try_frm/dataProvider/repository.dart';

part 'form_dart_event.dart';
part 'form_dart_state.dart';

class FormDartBloc extends Bloc<FormDartEvent, FormDartState> {
  FormDartBloc() : super(const FormDartState()) {
    on<QuestionFetched>(_onQuestionFetched);
    on<FormSubmitted>(_onFormSubmitted);
  }

  void _onQuestionFetched(QuestionFetched event, Emitter<FormDartState> emit ) {
    try{
    if(state.status == FormStatus.initial) {
      final questionList =  _fetchQuestion();
      emit(
          FormDartState(status:FormStatus.success,questionList: questionList));

    }
    }

    catch(_){
      emit(state.copyWith(status: FormStatus.failure));
    }

  }

  void _onFormSubmitted(FormSubmitted event, Emitter<FormDartState> emit) {
    emit(const FormDartState(status: FormStatus.submitted));
  }

  List<String> _fetchQuestion() {
    Repository rep = Repository();
    return rep.list;
  }

}
