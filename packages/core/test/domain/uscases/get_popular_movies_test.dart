import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late GetPopularMovies usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetPopularMovies(mockMovieRepository);
  });

  test('should get list of movie from a repository', () async {
    // Arrange
    when(mockMovieRepository.getPopularMovies())
        .thenAnswer((_) async => Right(tMovieList));
    // Act
    final result = await usecase.execute();
    // Assert
    expect(result, Right(tMovieList));
  });
}
