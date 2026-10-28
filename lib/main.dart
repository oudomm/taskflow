import 'package:flutter/material.dart';

void main() {
  runApp(const TaskFlowApp());
}

class TaskFlowApp extends StatelessWidget {
  const TaskFlowApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'TaskFlow',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('TaskFlow'),
          backgroundColor: Colors.green,
          foregroundColor: Colors.white,
        ),
        body: ListView(
          children: const [
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Complete Flutter assignment'),
              subtitle: Text('University'),
            ),
            ListTile(
              leading: Icon(Icons.work),
              title: Text('Review Spring Boot code'),
              subtitle: Text('Work'),
            ),
            ListTile(
              leading: Icon(Icons.book),
              title: Text('Learn Dart basics'),
              subtitle: Text('Personal'),
            ),
            ListTile(
              leading: Icon(Icons.school),
              title: Text('Study Data Analysis'),
              subtitle: Text('University'),
            ),
          ],
        ),
      ),
    );
  }
}
