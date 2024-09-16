import 'package:flutter/material.dart';
import '../services/api_service.dart';

class RegistrationScreen extends StatelessWidget {
  final ApiService apiService = ApiService();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController referralCodeController = TextEditingController();

  void registerUser(BuildContext context) async {
    await apiService.registerUser(
      emailController.text,
      passwordController.text,
      int.parse(referralCodeController.text),
      "62a833766ec5dafd6780fc85",
    );
    Navigator.pop(context); // Go back to login screen after registration
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Register')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(controller: emailController, decoration: InputDecoration(labelText: 'Email')),
            TextField(controller: passwordController, decoration: InputDecoration(labelText: 'Password')),
            TextField(controller: referralCodeController, decoration: InputDecoration(labelText: 'Referral Code')),
            ElevatedButton(
              onPressed: () => registerUser(context),
              child: Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
