import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static const String _baseUrl = 'http://127.0.0.1:8000/api/auth';

  // Sign up function
  static Future<Map<String, dynamic>> signUp({
    required String email,
    required String phone,
    required String name,
    required String password,
    required String birthday,
    required String bloodType,
    required String zipCode,
  }) async {
    final url = Uri.parse('$_baseUrl/register/user');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'phone': phone,
        'name': name,
        'password': password,
        'barthday': birthday,
        'blood_type': bloodType,
        'zip_code': zipCode,
      }),
    );

    if (response.statusCode == 200) {
      final data = json.decode(response.body);
      final token = data['result']['token'];
      final userName = data['result']['name'];

      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('token', token); // Save token
      await prefs.setString('currentUserName', userName); // Save current user name

      return data;
    } else if (response.statusCode == 422) {
      final errorData = json.decode(response.body);
      throw Exception('Failed to sign up: ${errorData['message']}');
    } else {
      throw Exception('Failed to sign up: ${response.body}');
    }
  }

  // Sign in function
  static Future<Map<String, dynamic>> signIn({
    required String email,
    required String password,
  }) async {
    final url = Uri.parse('$_baseUrl/login');
    final response = await http.post(
      url,
      headers: {
        'Content-Type': 'application/json',
      },
      body: json.encode({
        'email': email,
        'password': password,
      }),
    );

    if (response.statusCode == 200) {
      final responseData = json.decode(response.body);
      final token = responseData['result']['token'];
      final userName = responseData['result']['name'];

      // Save login state
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      await prefs.setString('token', token); // Save token
      await prefs.setString('currentUserName', userName); // Save current user name

      return responseData;
    } else if (response.statusCode == 404) {
      final errorData = json.decode(response.body);
      throw Exception('Failed to sign in: ${errorData['message']}');
    } else {
      throw Exception('Failed to sign in: ${response.body}');
    }
  }

  // Sign out function
  static Future<void> signOut() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    await prefs.remove('token'); // Remove token
    await prefs.remove('currentUserName'); // Remove current user name
  }
}
