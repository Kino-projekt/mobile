import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:mobile/models/User.dart';

class AuthService {

  Stream user;
  final String apiUrl = 'https://afternoon-waters-37189.herokuapp.com/api/auth';

  // auth change user stream
  Stream<User> get userData {
    return user;
  }

   Future signIn(String email, String password) async {
    try {
      final response = await http.post('$apiUrl/signin', body: { 'email': email, 'password': password });
      user = convert.jsonDecode(response.body)['accessToken'];
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  Future signUp(String email, String password) async {
    try {
      final response = await http.post('$apiUrl/signup', body: { 'email': 'email', 'password': 'password' });
      print(response);
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }

  // Future signOut() async {
  //   try {
  //     AuthResult result = await _auth.signInAnonymously();
  //     FirebaseUser user = result.user;
  //     return user;
  //   } catch (e) {
  //     print(e.toString());
  //     return null;
  //   }
  // }

}