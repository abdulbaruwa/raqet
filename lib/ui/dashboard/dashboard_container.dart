import 'dart:io';
import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:raqet/data/models/match_result_info_entity.dart';
import 'package:raqet/data/models/player_entity.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/ui/dashboard/dashboard_view.dart';
import 'package:raqet/ui/selectors/selectors.dart';
import 'package:redux/redux.dart';
import 'package:swagger/api.dart';

class DashboardContainer extends StatelessWidget {
  DashboardContainer({Key key}) : super(key: key);

  static const String route = '/dashboard';

  @override
  Widget build(BuildContext context) {
    return new StoreConnector<AppState, _ViewModel>(
        converter: _ViewModel.fromStore,
        builder: (context, vm) {
          return DashboardView(
            player: vm.player,
            matchResultInfos: vm.matchResultInfos,
            changedAvatar: vm.changedAvatar,
          );
        });
  }
}

class _ViewModel {
  final PlayerEntity player;
  final File changedAvatar;
  final List<MatchResultInfoEntity> matchResultInfos;
  _ViewModel(
      {@required this.player,
      @required this.matchResultInfos,
      this.changedAvatar});
  static _ViewModel fromStore(Store<AppState> store) {
    var avatarOption = avatarSelector(store.state);
        return _ViewModel(
            player: playerSelector(store.state).value,
            matchResultInfos: store.state.matchResultInfos.asList(),
            changedAvatar: avatarOption.isPresent ? avatarOption.value : null);
      }
    }
