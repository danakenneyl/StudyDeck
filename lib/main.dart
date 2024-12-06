import 'package:flutter/material.dart';
// import 'package:study_deck/screens/create_card.dart';
import 'package:study_deck/screens/studypage.dart';

void main() {
  runApp(const StudyApp());
}

// Class: StudyApp inherits from Stateless, is highest level widget of app
class StudyApp extends StatelessWidget {
  const StudyApp({super.key});

  // This widget is the root of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Study Deck Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const StudyPage(title: 'Study Deck Home Page'),
    );
  }
}
