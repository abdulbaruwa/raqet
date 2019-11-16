// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ranking_info_entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RankingInfoEntity> _$rankingInfoEntitySerializer =
    new _$RankingInfoEntitySerializer();

class _$RankingInfoEntitySerializer
    implements StructuredSerializer<RankingInfoEntity> {
  @override
  final Iterable<Type> types = const [RankingInfoEntity, _$RankingInfoEntity];
  @override
  final String wireName = 'RankingInfoEntity';

  @override
  Iterable<Object> serialize(Serializers serializers, RankingInfoEntity object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'ageGroup',
      serializers.serialize(object.ageGroup,
          specifiedType: const FullType(AgeGroup)),
      'regional',
      serializers.serialize(object.regional,
          specifiedType: const FullType(int)),
      'county',
      serializers.serialize(object.county, specifiedType: const FullType(int)),
      'national',
      serializers.serialize(object.national,
          specifiedType: const FullType(int)),
      'totalPoints',
      serializers.serialize(object.totalPoints,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  RankingInfoEntity deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RankingInfoEntityBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ageGroup':
          result.ageGroup = serializers.deserialize(value,
              specifiedType: const FullType(AgeGroup)) as AgeGroup;
          break;
        case 'regional':
          result.regional = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'county':
          result.county = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'national':
          result.national = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'totalPoints':
          result.totalPoints = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$RankingInfoEntity extends RankingInfoEntity {
  @override
  final String id;
  @override
  final AgeGroup ageGroup;
  @override
  final int regional;
  @override
  final int county;
  @override
  final int national;
  @override
  final int totalPoints;

  factory _$RankingInfoEntity(
          [void Function(RankingInfoEntityBuilder) updates]) =>
      (new RankingInfoEntityBuilder()..update(updates)).build();

  _$RankingInfoEntity._(
      {this.id,
      this.ageGroup,
      this.regional,
      this.county,
      this.national,
      this.totalPoints})
      : super._() {
    if (id == null) {
      throw new BuiltValueNullFieldError('RankingInfoEntity', 'id');
    }
    if (ageGroup == null) {
      throw new BuiltValueNullFieldError('RankingInfoEntity', 'ageGroup');
    }
    if (regional == null) {
      throw new BuiltValueNullFieldError('RankingInfoEntity', 'regional');
    }
    if (county == null) {
      throw new BuiltValueNullFieldError('RankingInfoEntity', 'county');
    }
    if (national == null) {
      throw new BuiltValueNullFieldError('RankingInfoEntity', 'national');
    }
    if (totalPoints == null) {
      throw new BuiltValueNullFieldError('RankingInfoEntity', 'totalPoints');
    }
  }

  @override
  RankingInfoEntity rebuild(void Function(RankingInfoEntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RankingInfoEntityBuilder toBuilder() =>
      new RankingInfoEntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RankingInfoEntity &&
        id == other.id &&
        ageGroup == other.ageGroup &&
        regional == other.regional &&
        county == other.county &&
        national == other.national &&
        totalPoints == other.totalPoints;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), ageGroup.hashCode),
                    regional.hashCode),
                county.hashCode),
            national.hashCode),
        totalPoints.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RankingInfoEntity')
          ..add('id', id)
          ..add('ageGroup', ageGroup)
          ..add('regional', regional)
          ..add('county', county)
          ..add('national', national)
          ..add('totalPoints', totalPoints))
        .toString();
  }
}

class RankingInfoEntityBuilder
    implements Builder<RankingInfoEntity, RankingInfoEntityBuilder> {
  _$RankingInfoEntity _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  AgeGroup _ageGroup;
  AgeGroup get ageGroup => _$this._ageGroup;
  set ageGroup(AgeGroup ageGroup) => _$this._ageGroup = ageGroup;

  int _regional;
  int get regional => _$this._regional;
  set regional(int regional) => _$this._regional = regional;

  int _county;
  int get county => _$this._county;
  set county(int county) => _$this._county = county;

  int _national;
  int get national => _$this._national;
  set national(int national) => _$this._national = national;

  int _totalPoints;
  int get totalPoints => _$this._totalPoints;
  set totalPoints(int totalPoints) => _$this._totalPoints = totalPoints;

  RankingInfoEntityBuilder();

  RankingInfoEntityBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _ageGroup = _$v.ageGroup;
      _regional = _$v.regional;
      _county = _$v.county;
      _national = _$v.national;
      _totalPoints = _$v.totalPoints;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RankingInfoEntity other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RankingInfoEntity;
  }

  @override
  void update(void Function(RankingInfoEntityBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RankingInfoEntity build() {
    final _$result = _$v ??
        new _$RankingInfoEntity._(
            id: id,
            ageGroup: ageGroup,
            regional: regional,
            county: county,
            national: national,
            totalPoints: totalPoints);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
