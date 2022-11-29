import 'package:core/core.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/helper_test.mocks.dart';

void main() {
  late GetWatchListStatus usecase;
  late MockMovieRepository repository;

  setUp(() {
    repository = MockMovieRepository();
    usecase = GetWatchListStatus(repository);
  });

  const tId = 1;

  test(
    'should get boolean value of watchlist status from repository',
    () async {
      // Arrange
      when(repository.isAddedToWatchlist(tId)).thenAnswer(
        (_) async => true,
      );

      // Act
      final result = await usecase.execute(tId);

      // Assert
      expect(result, true);
    },
  );
}
