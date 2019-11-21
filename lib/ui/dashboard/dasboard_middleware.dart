
import 'package:raqet/ui/dashboard/dashboard_actions.dart';
import 'package:raqet/ui/dashboard/dashboard_state.dart';
import 'package:redux/redux.dart';


final dashboardReducer = combineReducers<DashboardState>([TypedReducer<DashboardState, LoadDashboardSuccess>(setDashboard),
]);

// DashboardState setDashboard(DashboardState authState, LoadDashboardSuccess action){
//   return authState.rebuild((b) => b..matchResultInfos.replace(action.data.matchResultInfos));
// }

DashboardState setDashboard(DashboardState state, LoadDashboardSuccess action) {
  return state.rebuild((b) => b..matchResultInfos = action.data.matchResultInfos.toBuilder());
}
