import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late GetWatchlistMovies usecase;
  late MockMovieRepository repository;

  setUp(() {
    repository = MockMovieRepository();
    usecase = GetWatchlistMovies(repository);
  });

  test('should get movie list from a repository', () async {
    // Arrange
    when(repository.getWatchlistMovies())
        .thenAnswer((_) async => Right(tMovieList));
    // Act
    final result = await usecase.execute();
    // Assert
    expect(result, Right(tMovieList));
  });
}
