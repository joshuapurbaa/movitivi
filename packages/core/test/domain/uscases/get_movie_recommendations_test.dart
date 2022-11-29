import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late GetMovieRecommendations usecase;
  late MockMovieRepository mockMovieRepository;

  setUp(() {
    mockMovieRepository = MockMovieRepository();
    usecase = GetMovieRecommendations(mockMovieRepository);
  });

  const tId = 1;

  test('should get list of movie from repository', () async {
    // Arrange
    when(mockMovieRepository.getMovieRecommendations(tId))
        .thenAnswer((_) async => Right(tMovieList));

    // Act
    final result = await usecase.execute(tId);

    // Assert
    expect(result, Right(tMovieList));
  });
}
