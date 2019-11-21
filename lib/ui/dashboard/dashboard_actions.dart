
import 'dashboard_state.dart';

class LoadDashboard{
  final String playerId;

  LoadDashboard(this.playerId);
}

class LoadDashboardSuccess{
  final DashboardState data;

  LoadDashboardSuccess(this.data);
}

