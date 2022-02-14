import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:geoflutterfire/geoflutterfire.dart';
import 'package:location/location.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point.dart';

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

extension LocationDataX on LocationData {
  LocationDetail toDomain() {
    return LocationDetail(
      locationPoint: GeoFirePoint(latitude ?? 0, longitude ?? 0).toDomain(),
      accuracy: latitude ?? 0,
      altitude: altitude ?? 0,
      speed: speed ?? 0,
      speedAccuracy: speedAccuracy ?? 0,
      heading: heading ?? 0,
      time: DateTime.fromMillisecondsSinceEpoch(time?.toInt() ?? 0),
    );
  }
}
