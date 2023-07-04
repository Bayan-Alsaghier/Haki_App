// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complaint_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ComplaintRecord> _$complaintRecordSerializer =
    new _$ComplaintRecordSerializer();

class _$ComplaintRecordSerializer
    implements StructuredSerializer<ComplaintRecord> {
  @override
  final Iterable<Type> types = const [ComplaintRecord, _$ComplaintRecord];
  @override
  final String wireName = 'ComplaintRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ComplaintRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complaint;
    if (value != null) {
      result
        ..add('complaint')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.complaintType;
    if (value != null) {
      result
        ..add('complaint_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userEmail;
    if (value != null) {
      result
        ..add('user_email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userName;
    if (value != null) {
      result
        ..add('user_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  ComplaintRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ComplaintRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complaint':
          result.complaint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complaint_type':
          result.complaintType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_email':
          result.userEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_name':
          result.userName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$ComplaintRecord extends ComplaintRecord {
  @override
  final String? userId;
  @override
  final String? complaint;
  @override
  final String? complaintType;
  @override
  final String? userEmail;
  @override
  final String? userName;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ComplaintRecord([void Function(ComplaintRecordBuilder)? updates]) =>
      (new ComplaintRecordBuilder()..update(updates))._build();

  _$ComplaintRecord._(
      {this.userId,
      this.complaint,
      this.complaintType,
      this.userEmail,
      this.userName,
      this.ffRef})
      : super._();

  @override
  ComplaintRecord rebuild(void Function(ComplaintRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ComplaintRecordBuilder toBuilder() =>
      new ComplaintRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ComplaintRecord &&
        userId == other.userId &&
        complaint == other.complaint &&
        complaintType == other.complaintType &&
        userEmail == other.userEmail &&
        userName == other.userName &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, userId.hashCode), complaint.hashCode),
                    complaintType.hashCode),
                userEmail.hashCode),
            userName.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ComplaintRecord')
          ..add('userId', userId)
          ..add('complaint', complaint)
          ..add('complaintType', complaintType)
          ..add('userEmail', userEmail)
          ..add('userName', userName)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ComplaintRecordBuilder
    implements Builder<ComplaintRecord, ComplaintRecordBuilder> {
  _$ComplaintRecord? _$v;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  String? _complaint;
  String? get complaint => _$this._complaint;
  set complaint(String? complaint) => _$this._complaint = complaint;

  String? _complaintType;
  String? get complaintType => _$this._complaintType;
  set complaintType(String? complaintType) =>
      _$this._complaintType = complaintType;

  String? _userEmail;
  String? get userEmail => _$this._userEmail;
  set userEmail(String? userEmail) => _$this._userEmail = userEmail;

  String? _userName;
  String? get userName => _$this._userName;
  set userName(String? userName) => _$this._userName = userName;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ComplaintRecordBuilder() {
    ComplaintRecord._initializeBuilder(this);
  }

  ComplaintRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userId = $v.userId;
      _complaint = $v.complaint;
      _complaintType = $v.complaintType;
      _userEmail = $v.userEmail;
      _userName = $v.userName;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ComplaintRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ComplaintRecord;
  }

  @override
  void update(void Function(ComplaintRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ComplaintRecord build() => _build();

  _$ComplaintRecord _build() {
    final _$result = _$v ??
        new _$ComplaintRecord._(
            userId: userId,
            complaint: complaint,
            complaintType: complaintType,
            userEmail: userEmail,
            userName: userName,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
