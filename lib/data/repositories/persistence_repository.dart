
import 'dart:convert';
import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:raqet/data/models/serializers.dart';
import 'package:raqet/data/repositories/file_storate.dart';
import 'package:raqet/redux/auth/settings_state.dart';

class PersistenceRepository {
  const PersistenceRepository({
    @required this.fileStorage,
  });

  final FileStorage fileStorage;

  Future<File> saveSettingsState(SettingsState state) async {
    final data = serializers.serializeWith(SettingsState.serializer, state);
    return await fileStorage.save(json.encode(data));
  }

  Future<SettingsState> loadSettingsState() async {
    final String data = await fileStorage.load();
    
    return data == null ? SettingsState() : serializers.deserializeWith(SettingsState.serializer, json.decode(data));
  }

}