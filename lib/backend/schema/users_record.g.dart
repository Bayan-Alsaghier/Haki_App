// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersRecord> _$usersRecordSerializer = new _$UsersRecordSerializer();

class _$UsersRecordSerializer implements StructuredSerializer<UsersRecord> {
  @override
  final Iterable<Type> types = const [UsersRecord, _$UsersRecord];
  @override
  final String wireName = 'UsersRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, UsersRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.address;
    if (value != null) {
      result
        ..add('address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.province;
    if (value != null) {
      result
        ..add('province')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.translator;
    if (value != null) {
      result
        ..add('translator')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.bio;
    if (value != null) {
      result
        ..add('bio')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.sector;
    if (value != null) {
      result
        ..add('sector')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.state;
    if (value != null) {
      result
        ..add('state')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.price;
    if (value != null) {
      result
        ..add('Price')
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
    value = object.numberCustomers;
    if (value != null) {
      result
        ..add('number_customers')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.certifacte;
    if (value != null) {
      result
        ..add('certifacte')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.accuracy;
    if (value != null) {
      result
        ..add('accuracy')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  UsersRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'province':
          result.province = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'translator':
          result.translator = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'bio':
          result.bio = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sector':
          result.sector = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'Price':
          result.price = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'complaint':
          result.complaint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'number_customers':
          result.numberCustomers = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'certifacte':
          result.certifacte = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'accuracy':
          result.accuracy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$UsersRecord extends UsersRecord {
  @override
  final String? email;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final String? uid;
  @override
  final DateTime? createdTime;
  @override
  final String? phoneNumber;
  @override
  final String? address;
  @override
  final String? province;
  @override
  final LatLng? location;
  @override
  final bool? translator;
  @override
  final String? bio;
  @override
  final String? sector;
  @override
  final bool? state;
  @override
  final String? price;
  @override
  final String? complaint;
  @override
  final int? numberCustomers;
  @override
  final String? certifacte;
  @override
  final int? accuracy;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersRecord([void Function(UsersRecordBuilder)? updates]) =>
      (new UsersRecordBuilder()..update(updates))._build();

  _$UsersRecord._(
      {this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.address,
      this.province,
      this.location,
      this.translator,
      this.bio,
      this.sector,
      this.state,
      this.price,
      this.complaint,
      this.numberCustomers,
      this.certifacte,
      this.accuracy,
      this.ffRef})
      : super._();

  @override
  UsersRecord rebuild(void Function(UsersRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersRecordBuilder toBuilder() => new UsersRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersRecord &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        address == other.address &&
        province == other.province &&
        location == other.location &&
        translator == other.translator &&
        bio == other.bio &&
        sector == other.sector &&
        state == other.state &&
        price == other.price &&
        complaint == other.complaint &&
        numberCustomers == other.numberCustomers &&
        certifacte == other.certifacte &&
        accuracy == other.accuracy &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(
                                                                                0,
                                                                                email
                                                                                    .hashCode),
                                                                            displayName
                                                                                .hashCode),
                                                                        photoUrl
                                                                            .hashCode),
                                                                    uid
                                                                        .hashCode),
                                                                createdTime
                                                                    .hashCode),
                                                            phoneNumber
                                                                .hashCode),
                                                        address.hashCode),
                                                    province.hashCode),
                                                location.hashCode),
                                            translator.hashCode),
                                        bio.hashCode),
                                    sector.hashCode),
                                state.hashCode),
                            price.hashCode),
                        complaint.hashCode),
                    numberCustomers.hashCode),
                certifacte.hashCode),
            accuracy.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersRecord')
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('address', address)
          ..add('province', province)
          ..add('location', location)
          ..add('translator', translator)
          ..add('bio', bio)
          ..add('sector', sector)
          ..add('state', state)
          ..add('price', price)
          ..add('complaint', complaint)
          ..add('numberCustomers', numberCustomers)
          ..add('certifacte', certifacte)
          ..add('accuracy', accuracy)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersRecordBuilder implements Builder<UsersRecord, UsersRecordBuilder> {
  _$UsersRecord? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DateTime? _createdTime;
  DateTime? get createdTime => _$this._createdTime;
  set createdTime(DateTime? createdTime) => _$this._createdTime = createdTime;

  String? _phoneNumber;
  String? get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String? phoneNumber) => _$this._phoneNumber = phoneNumber;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _province;
  String? get province => _$this._province;
  set province(String? province) => _$this._province = province;

  LatLng? _location;
  LatLng? get location => _$this._location;
  set location(LatLng? location) => _$this._location = location;

  bool? _translator;
  bool? get translator => _$this._translator;
  set translator(bool? translator) => _$this._translator = translator;

  String? _bio;
  String? get bio => _$this._bio;
  set bio(String? bio) => _$this._bio = bio;

  String? _sector;
  String? get sector => _$this._sector;
  set sector(String? sector) => _$this._sector = sector;

  bool? _state;
  bool? get state => _$this._state;
  set state(bool? state) => _$this._state = state;

  String? _price;
  String? get price => _$this._price;
  set price(String? price) => _$this._price = price;

  String? _complaint;
  String? get complaint => _$this._complaint;
  set complaint(String? complaint) => _$this._complaint = complaint;

  int? _numberCustomers;
  int? get numberCustomers => _$this._numberCustomers;
  set numberCustomers(int? numberCustomers) =>
      _$this._numberCustomers = numberCustomers;

  String? _certifacte;
  String? get certifacte => _$this._certifacte;
  set certifacte(String? certifacte) => _$this._certifacte = certifacte;

  int? _accuracy;
  int? get accuracy => _$this._accuracy;
  set accuracy(int? accuracy) => _$this._accuracy = accuracy;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersRecordBuilder() {
    UsersRecord._initializeBuilder(this);
  }

  UsersRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _address = $v.address;
      _province = $v.province;
      _location = $v.location;
      _translator = $v.translator;
      _bio = $v.bio;
      _sector = $v.sector;
      _state = $v.state;
      _price = $v.price;
      _complaint = $v.complaint;
      _numberCustomers = $v.numberCustomers;
      _certifacte = $v.certifacte;
      _accuracy = $v.accuracy;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersRecord;
  }

  @override
  void update(void Function(UsersRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersRecord build() => _build();

  _$UsersRecord _build() {
    final _$result = _$v ??
        new _$UsersRecord._(
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            address: address,
            province: province,
            location: location,
            translator: translator,
            bio: bio,
            sector: sector,
            state: state,
            price: price,
            complaint: complaint,
            numberCustomers: numberCustomers,
            certifacte: certifacte,
            accuracy: accuracy,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
