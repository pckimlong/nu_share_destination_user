import 'package:google_place/google_place.dart';
import '../../domain/domain.dart';

extension SearchResultX on SearchResult {
  Place toDomain() {
    return Place(
      coordinate: Coordinate(
        geometry?.location?.lat ?? 0,
        geometry?.location?.lng ?? 0,
      ),
      name: name ?? 'Unknown',
      address: formattedAddress ?? 'Unknown',
    );
  }
}
