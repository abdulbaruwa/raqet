
import 'dart:io';

import 'package:raqet/data/models/player_entity.dart';
import 'package:raqet/redux/app/app_state.dart';
import 'package:raqet/utils/optional.dart';

Optional<PlayerEntity> playerSelector(AppState state) {
  try {
    return state.player != null ? Optional.of(state.player) : Optional.absent();
  } catch (e) {
    return Optional.absent();
  }
}

Optional<File> avatarSelector(AppState state) {
  try {
    return  state.avatar != null ? Optional.of(state.avatar) : Optional.absent();
  } catch (e) {
    return new Optional.absent();
  }
}
