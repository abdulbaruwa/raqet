
import "package:built_value/built_value.dart";
import 'package:built_value/serializer.dart';

part 'settings_state.g.dart';

abstract class SettingsState implements Built<SettingsState, SettingsStateBuilder>{

  String get  refreshToken;
  String get  accessToken;
  String get  deviceToken;
  String get  email;
  String get  photoUrl;
  bool get registrationComplete;
  bool get signedIn;
  String get  playerId;
  String get  azureAuthToken;
  String get  name;

   factory SettingsState() {
    return _$SettingsState._(
      refreshToken: '',
      accessToken: '',
      deviceToken: '',
      email: '',
      photoUrl: '',
      registrationComplete: false,
      signedIn: false,
      playerId: '',
      azureAuthToken: '',
      name: '',
    );
  }

 SettingsState._(); 

 //factory AuthState([void updates(AuthStateBuilder b)]) = _$AuthState;
  static Serializer<SettingsState> get serializer => _$settingsStateSerializer;
}