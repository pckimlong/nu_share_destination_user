import 'package:nu_share_destination_user/src/domain/core/entities/coordinate.dart';

/// Create some unchange value for domain and other layer
abstract class DomainValues {
  /// Show requests around driver in range of 30M
  static const initialDriverRadius = 30;

  /// Start camera position when initialize google map. This value specified
  /// phnom penh
  static const initialMapPoint = Coordinate(11.56, 104.88);
  static const initialMapZoom = 16.0;
  static const mapPointZoom = 18.0;

  // Vehicle static price

  /// How long should location update in meter
  /// Use to filter gps listen stream not to update every single time
  static const locationUpdateFilterInMeter = 10; // meter
}
