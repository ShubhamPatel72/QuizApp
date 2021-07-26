import 'Question.dart';

// ignore: camel_case_types

int _Questionno = 0;

class Quiz_brain {
  List<Question> _QuestionBank = [
    Question(q: 'Name of third hokage is Hiruzen', a: true),
    Question(q: 'Naruto is the grandson of tsundae', a: false),
    Question(q: 'Gai is the leader of team 8', a: false),
    Question(q: 'Minato Namikaze is the father of Naruto Uzumaki', a: true),
    Question(
        q: 'The name of Kiba Inuzuka\'s dog is called Gamabunta.', a: false),
    Question(
        q: 'Shikaku Nara was alive after the third Shinobi World War.',
        a: true),
    Question(q: 'Might Guy is the father of Rock Lee', a: false),
    Question(q: 'Kakashi Hatake and Obito Uchiha were teammates', a: true),
    Question(q: 'Gaara is the Fifth Kazekage', a: true),
    Question(q: 'Karin is part of the Senju Clan', a: false),
    Question(q: 'Hanabi Hyuga is the younger sister of Neji Hyuga', a: false),
    Question(q: 'Chiyo died peacefully', a: true),
    Question(q: 'Naruto Uzumaki kissed Sasuke Uchiha', a: true),
    Question(q: 'Rin Nohara was part of Team Fugaku', a: false),
    Question(q: 'Temari and Gaara are twins', a: false),
    //Question(q: 'Yamato is his real name', a: false),
    //Question(q: 'Kabuto Yakushi was an orphan when he was young', a: true),
    Question(q: 'Shino last name is Aburame', a: true)
  ];

  void nextQuestion() {
    if (_Questionno < _QuestionBank.length - 1) {
      _Questionno++;
    }
  }

  String GetQuestion() {
    return _QuestionBank[_Questionno].question;
  }

  bool GetAnswer() {
    return _QuestionBank[_Questionno].answer;
  }

  bool isFinished() {
    if (_Questionno >= _QuestionBank.length - 1) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _Questionno = 0;
  }
}
