import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import '../../driver/driver_entity_dto.dart';
import '../../trip/trip_entity_dto.dart';
import '../../user/user_entity_dto.dart';

part 'firebase_paths.dart';

extension RDatabaseX on FirebaseDatabase {
  DatabaseReference driverLocationRef(String uid) {
    return ref('drivers/$uid');
  }
}

extension FirestoreX on FirebaseFirestore {
  CollectionReference<UserEntityDto> get userColRef {
    return collection(_userColPath).withConverter(
      fromFirestore: (doc, _) {
        return UserEntityDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (user, _) => user.toJson(),
    );
  }

  CollectionReference<DriverEntityDto> get driverColRefConverter {
    return driverColRef.withConverter(
      fromFirestore: (doc, _) {
        return DriverEntityDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (driver, _) => driver.toJson(),
    );
  }

  CollectionReference get driverColRef {
    return collection(_driverColPath);
  }

  CollectionReference<TripEntityDto> get tripColRef {
    return collection(_driverColPath).withConverter(
      fromFirestore: (doc, _) {
        return TripEntityDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (trip, _) => trip.toJson(),
    );
  }
}

extension DocX on DocumentSnapshot {
  Map<String, dynamic> toMap() => data() as Map<String, dynamic>;
}
