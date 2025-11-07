import 'package:flutter/material.dart';

void main() {
  runApp(const dashboard_page());
}

// ignore: camel_case_types
class dashboard_page extends StatelessWidget {
  const dashboard_page({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: DashboardPage(),
    );
  }
}

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Real-time Dashboard'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[],
        ),
      ),
    );
  }
}
