import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:nu_share_destination_user/src/infra/user/user_entity_dto.dart';

part 'firebase_paths.dart';

extension FirestoreX on FirebaseFirestore {
  CollectionReference<UserEntityDto> get userColRef {
    return collection(_userColPath).withConverter(
      fromFirestore: (doc, _) {
        return UserEntityDto.fromJson(doc.toMap()).copyWith(id: doc.id);
      },
      toFirestore: (user, _) => user.toJson(),
    );
  }
}

extension DocX on DocumentSnapshot {
  Map<String, dynamic> toMap() => data() as Map<String, dynamic>;
}
