import 'package:flutter/material.dart';
import 'home_screen.dart';
import '../services/api_service.dart';

class OtpScreen extends StatelessWidget {
  final ApiService apiService = ApiService();
  final TextEditingController otpController = TextEditingController();

  void verifyOtp(BuildContext context) async {
    String otp = otpController.text;
    await apiService.verifyOtp(otp, "62b43472c84bb6dac82e0504", "62b43547c84bb6dac82e0525");
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => HomeScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('OTP Verification')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: otpController, decoration: InputDecoration(labelText: 'Enter OTP')),
            ElevatedButton(
              onPressed: () => verifyOtp(context),
              child: Text('Verify OTP'),
            ),
          ],
        ),
      ),
    );
  }
}
