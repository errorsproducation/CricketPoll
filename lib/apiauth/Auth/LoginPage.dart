import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  Future<void> _login() async {
    final String apiUrl = 'https://dummyjson.com/auth/login';
    final String email = _emailController.text.trim();
    final String password = _passwordController.text;

    try {
      final response = await http.post(
        Uri.parse(apiUrl),
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: jsonEncode(<String, String>{
          'username': email,
          'password': password,
        }),
      );

      if (response.statusCode == 200) {
        // Successful login, do something
        print('Login successful');
        print(jsonDecode(response.body)['token']);

        final token = jsonDecode(response.body)['token'];

        final meResponse = await http.get(
          Uri.parse('https://dummyjson.com/auth/me'),
          headers: <String, String>{
            'Authorization': 'Bearer $token',
          },
        );

        if (meResponse.statusCode == 200) {
          // Successful login and got user details
          final userDetails = jsonDecode(meResponse.body);
          print('User details: $userDetails');
          SharedPreferences sharedPreferences=await SharedPreferences.getInstance();
          await  sharedPreferences.setString('token', token);
          //print('stored token ${sharedPreferences.getString('token')}');
        } else {
          // Unsuccessful fetch user details
          print('Failed to fetch user details: ${meResponse.statusCode}');
        }
      } else {
        // Unsuccessful login, show error message
        print('Login failed: ${response.statusCode}');
      }
    } catch (e) {
      print('Exception during login: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: _login,
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

}
