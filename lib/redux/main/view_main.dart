
import 'package:flutter/widgets.dart';

class ViewMain {
  ViewMain({@required this.context, @required this.playerId,  this.force = false});

  final BuildContext context;
  final bool force;
  final String playerId;
}