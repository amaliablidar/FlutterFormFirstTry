import 'package:flutter/material.dart';

class InitialStateWidget extends StatelessWidget {
  const InitialStateWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
