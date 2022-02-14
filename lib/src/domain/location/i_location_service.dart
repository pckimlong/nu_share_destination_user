import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/coordinate.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_detail.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point.dart';
import 'package:nu_share_destination_user/src/domain/_core/entities/location_point_detail.dart';
import 'package:nu_share_destination_user/src/domain/location/location_failure.dart';
import 'package:fast_immutable_collections/fast_immutable_collections.dart'
    as fic;
import 'package:nu_share_destination_user/src/domain/location/place_entity.dart';

abstract class ILocationService {
  /// Get current device location point (geoPoint)
  Future<Either<LocationFailure, LocationPoint>> getDeviceLocationPoint();

  /// Get location point detail include address by coordinate
  Future<Either<LocationFailure, Option<LocationPointDetail>>>
      getAddressByLocationPoint(Coordinate coordinate);

  /// Watch current device location detail
  Stream<Either<LocationFailure, LocationDetail>> watchDeviceLocation();

  /// Covert address string into location point
  Future<Either<LocationFailure, Option<LocationPointDetail>>>
      translateAddressToLocation(String address);

  void dispose();

  /// Get the list of place
  Future<Either<LocationFailure, fic.IList<PlaceEntity>>> findAllPlaceByString(
      String query);

  Future<LocationPoint> coordinateToLocationPoint(Coordinate coordinate);
}
