import 'package:flutter/material.dart';

import 'models/task.dart';

void main() {
  runApp(const TaskFlowApp());
}

class TaskFlowApp extends StatelessWidget {
  const TaskFlowApp({super.key});

  static const List<Task> tasks = [
    Task(title: 'Complete Flutter assignment', category: 'University'),
    Task(title: 'Review Spring Boot code', category: 'Work'),
    Task(title: 'Learn Dart basics', category: 'Personal', isCompleted: true),
    Task(title: 'Study Data Analysis', category: 'University'),
    Task(title: 'Practice Kotlin', category: 'Personal'),
  ];

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
        body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            final task = tasks[index];

            return ListTile(
              leading: const Icon(Icons.task_alt),
              title: Text(task.title),
              subtitle: Text(task.category),
              trailing: Icon(
                task.isCompleted
                    ? Icons.check_circle
                    : Icons.radio_button_unchecked,
              ),
            );
          },
        ),
      ),
    );
  }
}
