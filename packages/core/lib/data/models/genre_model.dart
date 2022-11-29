import 'package:equatable/equatable.dart';

import '../../core.dart';

class GenreModel extends Equatable {
  final int id;
  final String name;

  @override
  List<Object?> get props => [id, name];

  const GenreModel({
    required this.id,
    required this.name,
  });

  factory GenreModel.fromJson(Map<String, dynamic> json) => GenreModel(
        id: json["id"],
        name: json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id,
        "name": name,
      };

  Genre toEntity() {
    return Genre(id: id, name: name);
  }
}
