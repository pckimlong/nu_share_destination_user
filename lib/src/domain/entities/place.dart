import 'package:freezed_annotation/freezed_annotation.dart';

import 'entities.dart';

part 'place.freezed.dart';

@freezed
class Place with _$Place {
  factory Place({
    required Coordinate coordinate,
    required String name,
    required String address,
  }) = _Place;
}
