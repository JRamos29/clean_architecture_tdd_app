part of 'number_trivia_bloc.dart';

@immutable
abstract class NumberTriviaState extends Equatable {}

class Empty extends NumberTriviaState {
  List<Object> get props => [];
}

class Loading extends NumberTriviaState {
  List<Object> get props => [];
}

class Loaded extends NumberTriviaState {
  final NumberTrivia trivia;

  Loaded({required this.trivia});

  List<Object> get props => [trivia];
}

class Error extends NumberTriviaState {
  final String message;

  Error({required this.message});

  List<Object> get props => [message];
}
