import 'package:flutter/material.dart';
import 'pages/people_list_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gov.br Clientes',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const PeopleListPage(),
    );
  }
}
