import 'package:try_frm/dataProvider/model/question.dart';

class Repository{
  List<String> questionList=['What\'s your name?','How old are you?', 'What\'s your favorite color?'];

  List<String> get list{
    return questionList;
  }
}