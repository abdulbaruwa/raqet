import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'address_entity.g.dart';

abstract class AddressEntity
    implements Built<AddressEntity, AddressEntityBuilder> {
  factory AddressEntity() {
    return _$AddressEntity._(
        line1: '',
        line2: '',
        line3: '',
        line4: '',
        town: '',
        county: '',
        postCode: '');
  }

  AddressEntity._();

  String get line1;
  String get line2;
  String get line3;
  String get line4;
  String get town;
  String get county;
  String get postCode;

static Serializer<AddressEntity> get serializer => _$addressEntitySerializer;

}
