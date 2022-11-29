import 'package:core/core.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../dummy_data/dummy_object.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late SaveWatchlist usecase;
  late MockMovieRepository repository;

  setUp(() {
    repository = MockMovieRepository();
    usecase = SaveWatchlist(repository);
  });

  test('should save the watchlist from the repository', () async {
    // Arrange
    when(repository.saveWatchlist(tMovieDetail))
        .thenAnswer((_) async => const Right('saved'));
    // Act
    final result = await usecase.execute(tMovieDetail);
    // Assert
    expect(result, const Right('saved'));
  });
}
