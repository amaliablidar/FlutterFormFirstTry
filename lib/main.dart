import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:try_frm/bloc/form_dart_bloc.dart';
import 'package:try_frm/presentation/screens/home_screen.dart';
import 'package:try_frm/presentation/screens/submitted_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider<FormDartBloc>(
      create: (_) => FormDartBloc()..add(QuestionFetched()),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.purple)
                .copyWith(secondary: Colors.amber)
        ),
        routes: {
          '/': (context)=>const HomeScreen(),
          SubmittedScreen.route:(context)=>const SubmittedScreen()
        },
      ),
    );
  }
}
