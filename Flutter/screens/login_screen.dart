import 'package:flutter/material.dart';
import 'otp_screen.dart';
import '../services/api_service.dart';

class LoginScreen extends StatelessWidget {
  final ApiService apiService = ApiService();
  final TextEditingController mobileController = TextEditingController();

  void sendOtp(BuildContext context) async {
    String mobileNumber = mobileController.text;
    await apiService.sendOtp(mobileNumber, "62b341aeb0ab5ebe28a758a3");
    Navigator.push(context, MaterialPageRoute(builder: (context) => OtpScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Login')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: mobileController, decoration: InputDecoration(labelText: 'Mobile Number')),
            ElevatedButton(
              onPressed: () => sendOtp(context),
              child: Text('Send OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
