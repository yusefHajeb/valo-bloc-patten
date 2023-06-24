import 'package:http/http.dart' as http;
import 'package:valoyousefhajeb/constant/constant.dart';

class WebService {
  Future<dynamic> getAgent() async {
    final response = await http.get(Uri.parse(AppLink.apiUrl));

    return response;
  }
}
