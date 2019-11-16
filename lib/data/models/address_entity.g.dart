// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'address_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddressEntity> _$addressEntitySerializer =
    new _$AddressEntitySerializer();

class _$AddressEntitySerializer implements StructuredSerializer<AddressEntity> {
  @override
  final Iterable<Type> types = const [AddressEntity, _$AddressEntity];
  @override
  final String wireName = 'AddressEntity';

  @override
  Iterable<Object> serialize(Serializers serializers, AddressEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'line1',
      serializers.serialize(object.line1,
          specifiedType: const FullType(String)),
      'line2',
      serializers.serialize(object.line2,
          specifiedType: const FullType(String)),
      'line3',
      serializers.serialize(object.line3,
          specifiedType: const FullType(String)),
      'line4',
      serializers.serialize(object.line4,
          specifiedType: const FullType(String)),
      'town',
      serializers.serialize(object.town, specifiedType: const FullType(String)),
      'county',
      serializers.serialize(object.county,
          specifiedType: const FullType(String)),
      'postCode',
      serializers.serialize(object.postCode,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AddressEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddressEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'line1':
          result.line1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line2':
          result.line2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line3':
          result.line3 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line4':
          result.line4 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'town':
          result.town = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'county':
          result.county = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'postCode':
          result.postCode = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddressEntity extends AddressEntity {
  @override
  final String line1;
  @override
  final String line2;
  @override
  final String line3;
  @override
  final String line4;
  @override
  final String town;
  @override
  final String county;
  @override
  final String postCode;

  factory _$AddressEntity([void Function(AddressEntityBuilder) updates]) =>
      (new AddressEntityBuilder()..update(updates)).build();

  _$AddressEntity._(
      {this.line1,
      this.line2,
      this.line3,
      this.line4,
      this.town,
      this.county,
      this.postCode})
      : super._() {
    if (line1 == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'line1');
    }
    if (line2 == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'line2');
    }
    if (line3 == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'line3');
    }
    if (line4 == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'line4');
    }
    if (town == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'town');
    }
    if (county == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'county');
    }
    if (postCode == null) {
      throw new BuiltValueNullFieldError('AddressEntity', 'postCode');
    }
  }

  @override
  AddressEntity rebuild(void Function(AddressEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddressEntityBuilder toBuilder() => new AddressEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddressEntity &&
        line1 == other.line1 &&
        line2 == other.line2 &&
        line3 == other.line3 &&
        line4 == other.line4 &&
        town == other.town &&
        county == other.county &&
        postCode == other.postCode;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, line1.hashCode), line2.hashCode),
                        line3.hashCode),
                    line4.hashCode),
                town.hashCode),
            county.hashCode),
        postCode.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddressEntity')
          ..add('line1', line1)
          ..add('line2', line2)
          ..add('line3', line3)
          ..add('line4', line4)
          ..add('town', town)
          ..add('county', county)
          ..add('postCode', postCode))
        .toString();
  }
}

class AddressEntityBuilder
    implements Builder<AddressEntity, AddressEntityBuilder> {
  _$AddressEntity _$v;

  String _line1;
  String get line1 => _$this._line1;
  set line1(String line1) => _$this._line1 = line1;

  String _line2;
  String get line2 => _$this._line2;
  set line2(String line2) => _$this._line2 = line2;

  String _line3;
  String get line3 => _$this._line3;
  set line3(String line3) => _$this._line3 = line3;

  String _line4;
  String get line4 => _$this._line4;
  set line4(String line4) => _$this._line4 = line4;

  String _town;
  String get town => _$this._town;
  set town(String town) => _$this._town = town;

  String _county;
  String get county => _$this._county;
  set county(String county) => _$this._county = county;

  String _postCode;
  String get postCode => _$this._postCode;
  set postCode(String postCode) => _$this._postCode = postCode;

  AddressEntityBuilder();

  AddressEntityBuilder get _$this {
    if (_$v != null) {
      _line1 = _$v.line1;
      _line2 = _$v.line2;
      _line3 = _$v.line3;
      _line4 = _$v.line4;
      _town = _$v.town;
      _county = _$v.county;
      _postCode = _$v.postCode;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddressEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AddressEntity;
  }

  @override
  void update(void Function(AddressEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddressEntity build() {
    final _$result = _$v ??
        new _$AddressEntity._(
            line1: line1,
            line2: line2,
            line3: line3,
            line4: line4,
            town: town,
            county: county,
            postCode: postCode);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
