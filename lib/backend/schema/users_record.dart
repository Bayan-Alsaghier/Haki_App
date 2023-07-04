import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_record.g.dart';

abstract class UsersRecord implements Built<UsersRecord, UsersRecordBuilder> {
  static Serializer<UsersRecord> get serializer => _$usersRecordSerializer;

  String? get email;

  @BuiltValueField(wireName: 'display_name')
  String? get displayName;

  @BuiltValueField(wireName: 'photo_url')
  String? get photoUrl;

  String? get uid;

  @BuiltValueField(wireName: 'created_time')
  DateTime? get createdTime;

  @BuiltValueField(wireName: 'phone_number')
  String? get phoneNumber;

  String? get address;

  String? get province;

  LatLng? get location;

  bool? get translator;

  String? get bio;

  String? get sector;

  bool? get state;

  @BuiltValueField(wireName: 'Price')
  String? get price;

  String? get complaint;

  @BuiltValueField(wireName: 'number_customers')
  int? get numberCustomers;

  String? get certifacte;

  int? get accuracy;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersRecordBuilder builder) => builder
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = ''
    ..address = ''
    ..province = ''
    ..translator = false
    ..bio = ''
    ..sector = ''
    ..state = false
    ..price = ''
    ..complaint = ''
    ..numberCustomers = 0
    ..certifacte = ''
    ..accuracy = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersRecord._();
  factory UsersRecord([void Function(UsersRecordBuilder) updates]) =
      _$UsersRecord;

  static UsersRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  String? photoUrl,
  String? uid,
  DateTime? createdTime,
  String? phoneNumber,
  String? address,
  String? province,
  LatLng? location,
  bool? translator,
  String? bio,
  String? sector,
  bool? state,
  String? price,
  String? complaint,
  int? numberCustomers,
  String? certifacte,
  int? accuracy,
}) {
  final firestoreData = serializers.toFirestore(
    UsersRecord.serializer,
    UsersRecord(
      (u) => u
        ..email = email
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..uid = uid
        ..createdTime = createdTime
        ..phoneNumber = phoneNumber
        ..address = address
        ..province = province
        ..location = location
        ..translator = translator
        ..bio = bio
        ..sector = sector
        ..state = state
        ..price = price
        ..complaint = complaint
        ..numberCustomers = numberCustomers
        ..certifacte = certifacte
        ..accuracy = accuracy,
    ),
  );

  return firestoreData;
}
