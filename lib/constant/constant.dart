import 'package:valoyousefhajeb/data/web_service/web_service.dart';

class AppLink {
  static const String baseUrl = "https://valorant-api.com";
  static const String method = "/v1/agents";
  static const apiUrl = "$baseUrl$method";
  static final apiProvider = WebService();
}

final apiProvider = WebService();
