import 'package:built_collection/built_collection.dart';
import 'package:raqet/data/models/match_result_info_entity.dart';
import 'package:raqet/data/models/serializers.dart';
import 'package:raqet/data/repositories/web_client.dart';

class DashboardRepository {
  const DashboardRepository({this.webClient});
  final WebClient webClient;

  Future<BuiltList<MatchResultInfoEntity>> loadMatchResults(String playerId) async {
     String path = "http://192.168.1.156:53429/api/Players/{playerId}/getmatchresults".replaceAll("{format}","json").replaceAll("{" + "playerId" + "}", playerId.toString());
    final dynamic response = await WebClient().get(path, 'token');
    final MatchResultInfoEntityListResponse matchResultInfoListResponse = 
        serializers.deserializeWith(MatchResultInfoEntityListResponse.serializer, response);
        return matchResultInfoListResponse.data;
  }
}
