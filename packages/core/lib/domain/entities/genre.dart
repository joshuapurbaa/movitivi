import 'package:equatable/equatable.dart';

class Genre extends Equatable {
  final int id;
  final String name;

  @override
  List<Object> get props => [id, name];

  const Genre({
    required this.id,
    required this.name,
  });
}
