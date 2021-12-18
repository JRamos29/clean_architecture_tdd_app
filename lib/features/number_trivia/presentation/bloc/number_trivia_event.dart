part of 'number_trivia_bloc.dart';

abstract class NumberTriviaEvent extends Equatable {}

class GetTriviaForConcreteNumber extends NumberTriviaEvent {
  final String numberString;

  GetTriviaForConcreteNumber(this.numberString);

  List<Object> get props => [numberString];
}

class GetTriviaForRandomNumber extends NumberTriviaEvent {
  List<Object> get props => [];
}


// abstract class NumberTriviaEvent extends Equatable {
//   const NumberTriviaEvent();

//   @override
//   List<Object> get props => [];
// }

// class GetTriviaForConcreteNumber extends NumberTriviaEvent {
//   final String numberString;

//   GetTriviaForConcreteNumber(this.numberString);
// }

// class GetTriviaForRandomNumber extends NumberTriviaEvent {}