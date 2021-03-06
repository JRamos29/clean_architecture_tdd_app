import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../../../core/error/exception.dart';
import '../models/number_trivia_model.dart';

abstract class NumberTriviaLocalDataSource {
  /// Gets the cached [NumberTriviaModel] which was gotten the last time
  /// the user had an internet connection.
  ///
  /// Throws [CacheException] if no cached data is present.
  Future<NumberTriviaModel> getLastNumberTrivia();

  Future<bool> cacheNumberTrivia(NumberTriviaModel triviaToCache);
}

const CACHED_NUMBER_TRIVIA = 'CACHED_NUMBER_TRIVIA';

class NumberTriviaLocalDataSourceImpl implements NumberTriviaLocalDataSource {
  final SharedPreferences sharedPreferences;

  NumberTriviaLocalDataSourceImpl({required this.sharedPreferences});

  // @override
  // Future<NumberTriviaModel> getLastNumberTrivia() {
  //   final jsonString =
  //       sharedPreferences.getString(CACHED_NUMBER_TRIVIA) as String;
  //   if (jsonString != null) {
  //     return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
  //   } else {
  //     throw CacheException();
  //   }
  // }
  @override
  Future<NumberTriviaModel> getLastNumberTrivia() {
    final jsonString = sharedPreferences.getString(CACHED_NUMBER_TRIVIA);
    if (jsonString == null) {
      throw CacheException();
    }
    return Future.value(NumberTriviaModel.fromJson(json.decode(jsonString)));
  }

  @override
  Future<bool> cacheNumberTrivia(NumberTriviaModel triviaToCache) {
    return sharedPreferences.setString(
      CACHED_NUMBER_TRIVIA,
      json.encode(triviaToCache.toJson()),
    );
  }
}
