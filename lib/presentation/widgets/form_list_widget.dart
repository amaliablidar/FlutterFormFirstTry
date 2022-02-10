import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_frm/bloc/form_dart_bloc.dart';
import 'package:try_frm/presentation/screens/submitted_screen.dart';
import 'package:try_frm/presentation/widgets/form_list_tile.dart';

class FormList extends StatelessWidget {
  const FormList({Key? key, required this.questionList}) : super(key: key);
  final List<String> questionList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: SingleChildScrollView(
          child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Flexible(
            child: ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) =>
                  FormListTile(question: questionList[index]),
              itemCount: questionList.length,
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: ElevatedButton(
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.amber),
                  padding: MaterialStateProperty.all(const EdgeInsets.all(15)),
                  ),
              onPressed: () {
                context.read<FormDartBloc>().add(FormSubmitted());
              },
              child: const Text('Submit'),
            ),
          ),
        ],
      )),
    );
  }
}
