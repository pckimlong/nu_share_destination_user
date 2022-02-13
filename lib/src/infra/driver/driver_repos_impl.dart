import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_failure.dart';
import 'package:nu_share_destination_user/src/domain/driver/driver_entity.dart';
import 'package:fast_immutable_collections/src/ilist/ilist.dart' as fic;
import 'package:dartz/dartz.dart';
import 'package:nu_share_destination_user/src/domain/driver/i_driver_repository.dart';

class DriverReposImpl implements IDriverRepository {
  final FirebaseFirestore _firestore;

  DriverReposImpl(this._firestore);

  @override
  Stream<Either<DriverFailure, fic.IList<DriverEntity>>> watchAllNearby() {
    // TODO: implement watchAllNearby
    throw UnimplementedError();
  }

  @override
  Stream<Either<DriverFailure, DriverEntity>> watchOne(String driverId) {
    // TODO: implement watchOne
    throw UnimplementedError();
  }
}
