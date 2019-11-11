import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:raqet/data/repositories/file_storate.dart';
import 'package:raqet/data/repositories/persistence_repository.dart';
import 'package:raqet/raqet_app.dart';
import 'package:raqet/redux/app/app_reducer.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:redux/redux.dart';


Future main() async {

  var repository = const PersistenceRepository(fileStorage: FileStorage('settings_state',getApplicationDocumentsDirectory) );
  var settings = await repository.loadSettingsState();
  

  final store = Store<AppState>(appReducer, initialState:AppState(),middleware: []);
  runApp(RaqetApp(store: store));
}
