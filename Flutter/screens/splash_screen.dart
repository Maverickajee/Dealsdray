import 'package:flutter/material.dart';
import 'login_screen.dart';
import '../services/api_service.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    fetchSplashData();
  }

  void fetchSplashData() async {
    Map<String, dynamic> body = {
      "deviceType": "android",
      "deviceId": "C6179909526098",
      "deviceName": "Samsung-MT200",
      "deviceOSVersion": "2.3.6",
      "deviceIPAddress": "11.433.445.66",
      "lat": 9.9312,
      "long": 76.2673,
      "buyer_gcmid": "",
      "buyer_pemid": "",
      "app": {
        "version": "1.20.5",
        "installTimeStamp": "2022-02-10T12:33:30.696Z",
        "uninstallTimeStamp": "2022-02-10T12:33:30.696Z",
        "downloadTimeStamp": "2022-02-10T12:33:30.696Z"
      }
    };
    await apiService.fetchSplashData(body);
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginScreen()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: CircularProgressIndicator()),
    );
  }
}
