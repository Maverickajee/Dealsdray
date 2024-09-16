import 'dart:convert';
import 'package:http/http.dart' as http;

class ApiService {
  final String baseUrl = 'http://devapiv4.dealsdray.com/api/v2';

  Future<dynamic> fetchSplashData(Map<String, dynamic> body) async {
    final response = await http.post(Uri.parse('$baseUrl/splash'), body: json.encode(body), headers: {"Content-Type": "application/json"});
    return json.decode(response.body);
  }

  Future<dynamic> sendOtp(String mobileNumber, String deviceId) async {
    final response = await http.post(
      Uri.parse('$baseUrl/login'),
      body: json.encode({"mobileNumber": mobileNumber, "deviceId": deviceId}),
      headers: {"Content-Type": "application/json"},
    );
    return json.decode(response.body);
  }

  Future<dynamic> verifyOtp(String otp, String deviceId, String userId) async {
    final response = await http.post(
      Uri.parse('$baseUrl/verifyOtp'),
      body: json.encode({"otp": otp, "deviceId": deviceId, "userId": userId}),
      headers: {"Content-Type": "application/json"},
    );
    return json.decode(response.body);
  }

  Future<dynamic> registerUser(String email, String password, int referralCode, String userId) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: json.encode({"email": email, "password": password, "referralCode": referralCode, "userId": userId}),
      headers: {"Content-Type": "application/json"},
    );
    return json.decode(response.body);
  }

  Future<dynamic> fetchHomeData() async {
    final response = await http.get(Uri.parse('$baseUrl/user/home/withoutPrice'));
    return json.decode(response.body);
  }
}
