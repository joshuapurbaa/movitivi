import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import 'package:dartz/dartz.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late GetNowPlayingMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetNowPlayingMovies(mockMovieRepository);
  });

  test('should get list of movies from the repository', () async {
    // Arrange
    when(mockMovieRepository.getNowPlayingMovies())
        .thenAnswer((_) async => Right(tMovieList));
    // Act
    final result = await usecase.execute();

    // Assert
    expect(result, Right(tMovieList));
  });
}
