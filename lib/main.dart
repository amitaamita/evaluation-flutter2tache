import 'package:flutter/material.dart';
import 'task_list.dart'; // Importer le fichier où la page TaskList est définie

void main() {
  runApp(TaskManagementApp());
}

class TaskManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Gestion des Tâches',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Vous pouvez choisir un autre thème si vous le souhaitez
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: TaskList(), // Utilisez la page TaskList comme page d'accueil
    );
  }
}
