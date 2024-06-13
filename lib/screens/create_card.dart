import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/flashcard.dart';
import 'package:study_deck/flashcards/card_content/temp.dart';

/*  Class:  StudyPage, handles UI functionality for studying
    Parameters: title,  String, page title to be displayed 
*/
class CreateCardPage extends StatefulWidget {
  const CreateCardPage({super.key, required this.title});
  final String title;

  @override
  State<CreateCardPage> createState() => _CreateCardPage();
}

// Class: _StudyPage, state management and UI for StudyPage
class _CreateCardPage extends State<CreateCardPage> {
  int cardIndex = 0;
  Flashcard currCard = Flashcard(cardContent: content[0]);

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
              currCard,
              const SizedBox(width: 20),
              ElevatedButton.icon(
                  onPressed: () {
                    // User flips through flash cards, currently doesn't reset flip
                    setState(() {
                      cardIndex = (cardIndex + 1) % content.length;
                      currCard = Flashcard(cardContent: content[cardIndex]);
                    });
                  },
                  label: const Text(''),
                  icon: const Icon(Icons.arrow_forward)),
            ]),
      ),
    );
  }
}
