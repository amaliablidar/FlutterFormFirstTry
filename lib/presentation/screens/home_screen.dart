import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_frm/bloc/form_dart_bloc.dart';
import 'package:try_frm/presentation/screens/submitted_screen.dart';
import 'package:try_frm/presentation/widgets/form_list_widget.dart';
import 'package:try_frm/presentation/widgets/initial_state_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Form')),
        body: BlocConsumer<FormDartBloc, FormDartState>(
            listener: (context, state) {
          if (state.status == FormStatus.submitted) {
            Navigator.of(context).pushReplacementNamed(SubmittedScreen.route);
          }
        }, builder: (context, state) {
          switch (state.status) {
            case FormStatus.initial:
              return const InitialStateWidget();
            case FormStatus.success:
              return BlocProvider.value(
                  value: BlocProvider.of<FormDartBloc>(context),
                  child: FormList(questionList: state.questionList));
            case FormStatus.failure:
              return const Center(child: Text('Something went wrong'));
            default:
              return const Center(child: Text('Something went wrong'));
          }
        }));
  }
}
