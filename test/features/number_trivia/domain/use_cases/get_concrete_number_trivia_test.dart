import 'package:clean_architecture_tdd_app/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:clean_architecture_tdd_app/features/number_trivia/domain/repositories/number_trivia_repository.dart';
import 'package:clean_architecture_tdd_app/features/number_trivia/domain/use_cases/get_concrete_number_trivia.dart';
import 'package:dartz/dartz.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockNumberTriviaRepository extends Mock
    implements NumberTriviaRepository {}

void main() {
  // late GetConcreteNumberTrivia usecase;
  // late MockNumberTriviaRepository mockNumberTriviaRepository;

  // setUp(() {
  final mockNumberTriviaRepository = MockNumberTriviaRepository();
  final usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
  // });

  final tNumber = 1;
  final tNumberTrivia = NumberTrivia(number: 1, text: 'test');

  test(
    'should get trivia for the number from the repository',
    () async {
      // "On the fly" implementation of the Repository using the Mockito package.
      // When getConcreteNumberTrivia is called with any argument, always answer with
      // the Right "side" of Either containing a test NumberTrivia object.
      when(() => mockNumberTriviaRepository.getConcreteNumberTrivia(1))
          .thenAnswer((_) async => Right(tNumberTrivia));
      // The "act" phase of the test. Call the not-yet-existent method.
      final result = await usecase(Params(number: tNumber));
      // UseCase should simply return whatever was returned from the Repository
      expect(result, Right(tNumberTrivia));
      // Verify that the method has been called on the Repository
      verify(() => mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
      // Only the above method should be called and nothing more.
      verifyNoMoreInteractions(mockNumberTriviaRepository);
    },
  );
}

// // Note for who using flutter 2.2 (null safety is enable by default) and getting error
// // type 'Null' is not a subtype of type 'Future<Either<Failure, NumberTrivia>>'
// // you shouldn't create MockNumberTriviaRepository manually, instead of using build runner
// // example code and then run build runner with command:
// // $ flutter pub run build_runner build

// // @GenerateMocks([], customMocks: [
// //   MockSpec<NumberTriviaRepository>(as: #NumberTriviaRepositoryMock)
// // ])
// @GenerateMocks([NumberTriviaRepository])
// void main() {
//   late GetConcreteNumberTrivia usecase;
//   late MockNumberTriviaRepository mockNumberTriviaRepository;

//   setUp(() {
//     mockNumberTriviaRepository = MockNumberTriviaRepository();
//     usecase = GetConcreteNumberTrivia(mockNumberTriviaRepository);
//   });

//   final tNumber = 1;
//   final tNUmberTrivia = NumberTrivia(text: 'test', number: 1);
//   test('should get trivia for the number from repository', () async {
//     when(mockNumberTriviaRepository.getConcreteNumberTrivia(1))
//         .thenAnswer((_) async => Right(tNUmberTrivia));

//     final result = await usecase;
//     expect(result, Right(tNUmberTrivia));
//     verify(mockNumberTriviaRepository.getConcreteNumberTrivia(tNumber));
//     verifyNoMoreInteractions(mockNumberTriviaRepository);
//   });
// }