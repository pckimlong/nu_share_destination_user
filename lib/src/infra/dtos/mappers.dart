import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:geolocator/geolocator.dart';
import '../../domain/domain.dart';

extension GeoFirePointX on GeoFirePoint {
  LocationPoint toDomain() {
    return LocationPoint(
      geoHash: hash,
      coordinate: Coordinate(latitude, longitude),
    );
  }

  static GeoFirePoint fromDomain(Coordinate coordinate) {
    return GeoFirePoint(
      coordinate.latitude,
      coordinate.longitude,
    );
  }
}

extension CoordinateX on Coordinate {
  LocationPoint toLocationPoint() {
    return GeoFirePoint(latitude, longitude).toDomain();
  }

  GeoFirePoint toGeoFirePoint() {
    return GeoFirePoint(
      latitude,
      longitude,
    );
  }
}

extension LocationDataX on Position {
  LocationDetail toDomain() {
    return LocationDetail(
      locationPoint: GeoFirePoint(latitude, longitude).toDomain(),
      accuracy: latitude,
      altitude: altitude,
      speed: speed,
      speedAccuracy: speedAccuracy,
      heading: heading,
      time: timestamp,
    );
  }
}
