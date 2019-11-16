import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:raqet/data/models/address_entity.dart';
import 'package:raqet/data/models/ranking_info_entity.dart';
import 'package:raqet/data/models/search_preference_entity.dart';

part 'player_entity.g.dart';

abstract class PlayerEntity
    implements Built<PlayerEntity, PlayerEntityBuilder> {
  factory PlayerEntity() {
    return _$PlayerEntity._(
      id: '',
      firstName: '',
      lastName: '',
      gender: '',
      ltaNumber: 0,
      ltaRanking: 0,
      ltaRating: '',
      address: AddressEntity(),
      authenticationId: '',
      email: '',
      isAdmin: false,
      deviceToken: '',
      devicePlatform: '',
      notificationRegistrationId: '',
      profileImageUrl: '',
      userId: '',
      usePublicProfileImage: true,
      rankingInfos: BuiltList<RankingInfoEntity>(),
      defaultSearchPreference: SearchPreferenceEntity(),
      cosmosEntityName: '',
    );
  }

  String get id;
  String get firstName;
  String get lastName;
  String get gender;
  int get ltaNumber;
  int get ltaRanking;
  String get ltaRating;
  AddressEntity get address;
  String get authenticationId;
  String get email;
  bool get isAdmin;
  String get deviceToken;
  String get devicePlatform;
  String get notificationRegistrationId;
  String get profileImageUrl;
  String get userId;
  bool get usePublicProfileImage;
  BuiltList<RankingInfoEntity> get rankingInfos;
  SearchPreferenceEntity get defaultSearchPreference;
  String get cosmosEntityName;

  PlayerEntity._();

  static Serializer<PlayerEntity> get serializer => _$playerEntitySerializer;
}
