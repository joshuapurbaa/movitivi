import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late RemoveWatchlist usecase;
  late MockMovieRepository repository;

  setUp(() {
    repository = MockMovieRepository();
    usecase = RemoveWatchlist(repository);
  });

  test('should remove the watchlist movie from the repository', () async {
    // Arrange
    when(repository.removeWatchlist(tMovieDetail))
        .thenAnswer((_) async => const Right('removed'));
    // Act
    final result = await usecase.execute(tMovieDetail);
    // Assert
    expect(result, const Right('removed'));
  });
}
