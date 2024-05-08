import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/flashcard.dart';
import 'package:study_deck/flashcards/card_content.dart';

class StudyPage extends StatefulWidget {
  const StudyPage({super.key, required this.title});
  final String title;

  @override
  State<StudyPage> createState() => _StudyPage();
}

class _StudyPage extends State<StudyPage> {
  int cardIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Flashcard(cardContent: content[cardIndex]),
              const SizedBox(width: 20),
              ElevatedButton.icon(
                  onPressed: () {
                    // User flips through flash cards
                    nextFlashCard();
                  },
                  label: const Text(''),
                  icon: const Icon(Icons.arrow_forward)),
            ]),
      ),
    );
  }

  // Updates to next current index
  void nextFlashCard() {
    setState(() {
      if (cardIndex >= content.length - 1) {
        cardIndex = 0;
      } else {
        cardIndex++;
      }
    });
  }
}
