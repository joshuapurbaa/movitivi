import 'package:dartz/dartz.dart';

import '../../utils/failure.dart';
import '../domain.dart';

class SearchMovies {
  final MovieRepository repository;

  SearchMovies(this.repository);

  Future<Either<Failure, List<Movie>>> execute(String query) {
    return repository.searchMovies(query);
  }
}
