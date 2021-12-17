import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  Failure([List properties = const <dynamic>[]]);

  @override
  List get props => [];
}

// General failures
class ServerFailure extends Failure {}

class CacheFailure extends Failure {}
