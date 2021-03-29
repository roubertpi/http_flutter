import 'dart:convert';

import 'package:dio_aprendendo/model/user_model.dart';
import 'package:dio_aprendendo/repository/i_user_repository.dart';
import 'package:http/http.dart' as http;

class UserHttpRepository implements IUserRepository {
  @override
  Future<List<UserModel>> findAllUsers() async {
    final response =
        await http.get('https://5f7cba02834b5c0016b058aa.mockapi.io/api/users');
    final List<dynamic> responseMap = jsonDecode(response.body);
    responseMap.map((resp) {}).toList();
    return  responseMap.map<UserModel>((resp)=>UserModel.fromMap(resp)).toList();
  }
}
