import 'package:path_provider/path_provider.dart';
import 'package:raqet/data/repositories/dashboard_repository.dart';
import 'package:raqet/data/repositories/file_storate.dart';
import 'package:raqet/data/repositories/persistence_repository.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/redux/auth/auth_actions.dart';
import 'package:raqet/redux/main/view_main.dart';
import 'package:redux/redux.dart';

List<Middleware<AppState>> createStorePersistentMiddleware(
    [PersistenceRepository settingsRepository = const PersistenceRepository(
        fileStorage:
            FileStorage('settings_state', getApplicationDocumentsDirectory)),
            DashboardRepository dashboardRepository = const DashboardRepository()]) {
  final loadState = _createLoadState(settingsRepository,dashboardRepository);
  return [TypedMiddleware<AppState, LoadStateRequest>(loadState)];
}

Middleware<AppState> _createLoadState(
    PersistenceRepository settingsRepository,
    DashboardRepository dashboardRepository
    ) {
  return (Store<AppState> store, dynamic dynamicAction,
      NextDispatcher next) async {
    final action = dynamicAction as LoadStateRequest;

    var settingsState = await settingsRepository.loadSettingsState();
    // var dashboardState = await dashboardRepository.loadMatchResults(settingsState.playerId);

    if (!settingsState.signedIn) {
      store.dispatch(LoadUserLogin(action.context));
    } else {
      store.dispatch(ViewMain(
        context: action.context, 
        playerId: settingsState.playerId));
    }
    next(action);
  };
}
