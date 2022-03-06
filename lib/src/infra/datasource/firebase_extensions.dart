import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_database/firebase_database.dart';
import '../dtos/dtos.dart';

part 'firebase_paths.dart';

extension RDatabaseX on FirebaseDatabase {
  DatabaseReference driverLocationRef(String uid) {
    return ref('drivers/$uid');
  }
}

extension FirestoreX on FirebaseFirestore {
  CollectionReference<UserDto> get userColRef {
    return collection(_userColPath).withConverter(
      fromFirestore: (doc, _) {
        return UserDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (user, _) => user.toJson(),
    );
  }

  CollectionReference<DriverDto> get driverColRefConverter {
    return driverColRef.withConverter(
      fromFirestore: (doc, _) {
        return DriverDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (driver, _) => driver.toJson(),
    );
  }

  CollectionReference get driverColRef {
    return collection(_driverColPath);
  }

  CollectionReference<TripDto> get tripColRef {
    return collection(_driverColPath).withConverter(
      fromFirestore: (doc, _) {
        return TripDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (trip, _) => trip.toJson(),
    );
  }
}

extension DocX on DocumentSnapshot {
  Map<String, dynamic> toMap() => data() as Map<String, dynamic>;
}
