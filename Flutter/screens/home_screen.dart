import 'package:flutter/material.dart';
import '../services/api_service.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ApiService apiService = ApiService();
  List products = [];

  @override
  void initState() {
    super.initState();
    fetchHomeData();
  }

  void fetchHomeData() async {
    var data = await apiService.fetchHomeData();
    setState(() {
      products = data['products'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Home')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products[index]['name']),
            subtitle: Text(products[index]['description']),
          );
        },
      ),
    );
  }
}
