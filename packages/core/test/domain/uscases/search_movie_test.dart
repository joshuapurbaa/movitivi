import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late SearchMovies usecase;
  late MockMovieRepository repository;

  setUp(() {
    repository = MockMovieRepository();
    usecase = SearchMovies(repository);
  });

  const tQuery = 'batman';

  test('should get list of movies from the repository', () async {
    // Arrange
    when(repository.searchMovies(tQuery))
        .thenAnswer((_) async => Right(tMovieList));
    // Act
    final result = await usecase.execute(tQuery);
    // Assert
    expect(result, Right(tMovieList));
  });
}
