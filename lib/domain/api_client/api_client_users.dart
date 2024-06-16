import 'dart:convert';
import 'package:game_for_you_app/domain/api_client/configuration.dart';
import 'package:game_for_you_app/domain/entity/users.dart';
import 'package:http/http.dart' as http;

class ApiClientUsers {

  Future<List<Users>> fetchUsersData() async {
    final response = await http.get(Uri.parse(Configuration.host));

    if (response.statusCode == 200) {
      Map<String, dynamic> data = json.decode(response.body);
      List<dynamic> usersJson = data['items'];
      return usersJson.map((json) => Users.fromJson(json)).toList();
    } else {
      throw Exception('Не удалось загрузить данные');
    }
  }
}
