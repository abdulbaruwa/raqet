
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/settings_state.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  AppState,
  SettingsState, 
  // STARTER: serializers - do not remove comment
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
