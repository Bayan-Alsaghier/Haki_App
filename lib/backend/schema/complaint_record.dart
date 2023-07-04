import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'complaint_record.g.dart';

abstract class ComplaintRecord
    implements Built<ComplaintRecord, ComplaintRecordBuilder> {
  static Serializer<ComplaintRecord> get serializer =>
      _$complaintRecordSerializer;

  @BuiltValueField(wireName: 'user_id')
  String? get userId;

  String? get complaint;

  @BuiltValueField(wireName: 'complaint_type')
  String? get complaintType;

  @BuiltValueField(wireName: 'user_email')
  String? get userEmail;

  @BuiltValueField(wireName: 'user_name')
  String? get userName;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ComplaintRecordBuilder builder) => builder
    ..userId = ''
    ..complaint = ''
    ..complaintType = ''
    ..userEmail = ''
    ..userName = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('complaint');

  static Stream<ComplaintRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ComplaintRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ComplaintRecord._();
  factory ComplaintRecord([void Function(ComplaintRecordBuilder) updates]) =
      _$ComplaintRecord;

  static ComplaintRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createComplaintRecordData({
  String? userId,
  String? complaint,
  String? complaintType,
  String? userEmail,
  String? userName,
}) {
  final firestoreData = serializers.toFirestore(
    ComplaintRecord.serializer,
    ComplaintRecord(
      (c) => c
        ..userId = userId
        ..complaint = complaint
        ..complaintType = complaintType
        ..userEmail = userEmail
        ..userName = userName,
    ),
  );

  return firestoreData;
}
