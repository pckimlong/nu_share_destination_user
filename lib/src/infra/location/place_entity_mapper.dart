import 'package:google_place/google_place.dart';
import '../../domain/core/entities/coordinate.dart';
import '../../domain/location/place_entity.dart';

extension SearchResultX on SearchResult {
  PlaceEntity toDomain() {
    return PlaceEntity(
      coordinate: Coordinate(
        geometry?.location?.lat ?? 0,
        geometry?.location?.lng ?? 0,
      ),
      name: name ?? 'Unknown',
      address: formattedAddress ?? 'Unknown',
    );
  }
}
