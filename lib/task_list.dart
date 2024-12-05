import 'package:flutter/material.dart';
import 'task_form.dart';
import 'task_details.dart';

class TaskList extends StatelessWidget {
  final List<Map<String, String>> tasks = [
    {'title': 'Tâche 1', 'description': 'Description de la tâche 1'},
    {'title': 'Tâche 2', 'description': 'Description de la tâche 2'},
    {'title': 'Tâche 3', 'description': 'Description de la tâche 3'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Liste des Tâches'),
      ),
      body: ListView.builder(
        itemCount: tasks.length,
        itemBuilder: (context, index) {
          final task = tasks[index];
          return ListTile(
            title: Text(task['title']!),
            subtitle: Text(task['description']!),
            onTap: () {
              // Naviguer vers la page des détails
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => TaskDetails(task: task),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Naviguer vers la page du formulaire
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => TaskForm(),
            ),
          );
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
