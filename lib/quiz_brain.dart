import 'package:quizzler/question.dart';

class QuizBrain {
  int _questionNumber = 0;
  List<Question> _questionBank = [
    Question('A queue cannot be implemented using an array.', false),
    Question(
        'Every node in a linked list has two components : One to store relevant information and one to store the address.',
        true),
    Question('The link component of each node is a pointer.', true),
    Question(
        'Recursion is a very powerful way to solve certain problems for which the solution would otherwise be more complicated to code.',
        true),
    Question('A function that calls itself is an iterative function.', false),
    Question(
        'We can traverse a singly linked list backward starting from the last node to the first node.',
        false),
    Question(
        'The elements at the top of the stack have been in the stack the longest.',
        false),
    Question('The item added to the stack last will be the item removed last.',
        false),
    Question(
        'The operation pop returns the top element of the stack without removing it.',
        false),
    Question('The time complexity of the copyStack function is O(1).', false),
    Question(
        'Software engineers typically break the software development process into the following four phases: analysis, design, implementation, and testing and debugging.',
        true),
    Question('The components of a class are called objects.', false),
    Question(
        'As parameters to functions, class objects can be passed only by reference.',
        true),
    Question('Inheritance is an " is a" relationship.', true),
    Question(
        'Overriding a member function is the same as redefining it.', true),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      return true;
    }
    return false;
  }

  void reset() {
    _questionNumber = 0;
  }
}
