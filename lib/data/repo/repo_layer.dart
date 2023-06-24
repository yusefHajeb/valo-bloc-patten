import 'package:valoyousefhajeb/data/web_service/web_service.dart';

class RepoLayer {
  final WebService? apiProvider;

  RepoLayer({this.apiProvider});

  Future<dynamic> getAgent() async {
    return apiProvider!.getAgent();
  }
}
