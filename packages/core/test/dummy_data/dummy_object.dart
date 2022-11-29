import 'package:core/core.dart';

final tMovie = Movie(
  adult: false,
  backdropPath: 'backdropPath',
  genreIds: const [1, 2],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  popularity: 1.0,
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  title: 'title',
  video: false,
  voteAverage: 1.0,
  voteCount: 10,
);

const tMovieDetail = MovieDetail(
  adult: false,
  backdropPath: 'backdropPath',
  genres: [
    Genre(id: 1, name: 'name'),
  ],
  id: 1,
  originalTitle: 'originalTitle',
  overview: 'overview',
  posterPath: 'posterPath',
  releaseDate: 'releaseDate',
  runtime: 1,
  title: 'title',
  voteAverage: 7.0,
  voteCount: 100,
);

final tMovieList = [tMovie];
