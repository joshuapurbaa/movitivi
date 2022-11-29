import 'package:equatable/equatable.dart';

import '../data.dart';

class MovieResponse extends Equatable {
  final List<MovieModel> movieList;

  @override
  List<Object> get props => [movieList];

  const MovieResponse({required this.movieList});

  factory MovieResponse.fromJson(Map<String, dynamic> json) => MovieResponse(
        movieList: List<MovieModel>.from((json["results"] as List)
            .map((x) => MovieModel.fromJson(x))
            .where((element) => element.posterPath != null)),
      );

  Map<String, dynamic> toJson() => {
        "results": List<MovieModel>.from(movieList.map((x) => x.toJson())),
      };
}
