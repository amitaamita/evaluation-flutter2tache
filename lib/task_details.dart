import 'package:flutter/material.dart';

class TaskDetails extends StatelessWidget {
  final Map<String, String> task;

  TaskDetails({required this.task});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(task['title']!),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Titre: ${task['title']}',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            Text('Description: ${task['description']}'),
            SizedBox(height: 10),
            Text('Date de début: ${task['startDate']}'),
            SizedBox(height: 10),
            Text('Date de fin: ${task['endDate']}'),
          ],
        ),
      ),
    );
  }
}
