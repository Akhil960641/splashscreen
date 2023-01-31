
import 'dart:convert';
import 'package:http/http.dart' as http;

import 'package:splashscreen/userModel.dart';

Future<User> createAlbum(String firstName,middleName,lastname,userName,phoneNumber,email,password) async {
  final response = await http.post(
    Uri.parse('https://lms-beta-api.foxa.in/api/v1/web/C1003/user/register/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      "first_name": firstName,
      "middle_name": middleName,
      "last_name": lastname,
      "username": userName,
      "password": password,
      "mobile": phoneNumber,
      "email": email
    }),
  );

  if (response.statusCode == 201) {


    return User.fromJson(jsonDecode(response.body));
  } else {


    throw Exception('Failed to create album.');
  }
}