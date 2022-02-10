import 'package:flutter/material.dart';

class FormListTile extends StatefulWidget {
  const FormListTile({Key? key, required this.question}) : super(key: key);
  final String question;

  @override
  State<FormListTile> createState() => _FormListTileState();
}

class _FormListTileState extends State<FormListTile> {
  final _controller = TextEditingController();
  bool _validate = false;

  bool checkIfTextIsEmpty(String value) {
    if(value.isEmpty){
      return false;
    }
    return true;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          alignment: Alignment.centerLeft,
          child: Text(
            widget.question,
            style: const TextStyle(fontSize: 20),
          ),
          padding: const EdgeInsets.all(10),
          decoration: BoxDecoration(
              border: Border.all(width: 0.3, color: Colors.grey),
              borderRadius: const BorderRadius.all(Radius.circular(10))),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: TextField(
            controller: _controller,
            decoration: const InputDecoration(
              labelText: 'Enter your answer here',
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
