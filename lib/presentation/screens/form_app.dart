import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_frm/bloc/form_dart_bloc.dart';

import 'home_screen.dart';

class FormApp extends StatelessWidget {
  const FormApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Form')),
      body: BlocProvider(
        create: (_) => FormDartBloc(),
        child: const HomeScreen(),
      ),
    );
  }
}
