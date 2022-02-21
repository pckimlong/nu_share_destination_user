import 'package:fpdart/fpdart.dart';
import '../core/entities/coordinate.dart';
import '../core/entities/location_detail.dart';
import '../core/entities/location_address.dart';
import 'location_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:nu_share_destination_user/src/domain/location/place_entity.dart';

abstract class ILocationService {
  /// Get current device location point (geoPoint)
  Future<Either<LocationFailure, LocationAddress>> getMyAddress();

  /// Get my coordinate
  Future<Either<LocationFailure, Coordinate>> getMyCoordinate();

  /// Get location point detail include address by coordinate
  Future<Either<LocationFailure, LocationAddress>> getAddressByCoordinate(
      Coordinate coordinate);

  /// Get last know address which this device is at that could saveed in catch...
  Future<LocationAddress?> getMyLastLocationAddress();

  /// Watch current device location detail,
  /// [meterFilter] determine how many meter should location be update
  Stream<Either<LocationFailure, LocationDetail>> watchMyLocationDetail(
      [int meterFilter = 10]);

  /// Covert address string into location point
  Future<Either<LocationFailure, Option<LocationAddress>>> getAddressByString(
      String address);

  /// Get the list of place
  Future<Either<LocationFailure, fic.IList<PlaceEntity>>> findAllPlaceByString(
      String query);

  /// Calculete between 2 coordinate in meter
  double getDistance({
    required Coordinate startedPosition,
    required Coordinate endedPosition,
  });
}
