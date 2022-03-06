import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import '../../domain/domain.dart';

extension GeoFirePointX on GeoFirePoint {
  LocationPoint toLocationPoint() {
    return LocationPoint(
      geoHash: hash,
      coordinate: Coordinate(latitude, longitude),
    );
  }
}

extension LocationPointX on LocationPoint {
  GeoFirePoint toGeoFirePoint() {
    return GeoFirePoint(coordinate.latitude, coordinate.longitude);
  }
}

extension CoordinateX on Coordinate {
  GeoFirePoint toGeoFirePoint() {
    return GeoFirePoint(latitude, longitude);
  }
}

extension GeoPointX on GeoPoint {
  Coordinate toCoordinate() {
    return Coordinate(latitude, longitude);
  }
}
