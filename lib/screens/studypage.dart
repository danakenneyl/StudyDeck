import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/flashcard.dart';
import 'package:study_deck/flashcards/hard_coded_deck.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:realm/realm.dart';
import 'package:study_deck/flashcards/realm_to_widget.dart';

/*  Class:  StudyPage, handles UI functionality for studying
    Parameters: title,  String, page title to be displayed 
*/
class StudyPage extends StatefulWidget {
  const StudyPage({super.key, required this.title});
  final String title;

  @override
  State<StudyPage> createState() => _StudyPage();
}

// Class: _StudyPage, state management and UI for StudyPage
class _StudyPage extends State<StudyPage> {
  int index = 0;
  // The database
  late Realm realm;
  late RealmResults<StudyCard> studycards;
  late List<Flashcard> theCards = realmListToFlashcards(studycards);
  late Flashcard currCard = theCards[0];

  @override
  void initState() {
    super.initState();
    // Configure database
    final config =
        Configuration.local([StudyCard.schema, StudyCardItem.schema]);
    realm = Realm(config);
    studycards = realm.query<StudyCard>('deckName == "Sample Deck"');
  }

  @override
  void dispose() {
    realm.close();
    super.dispose();
  }

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
                      index = (index + 1) % theCards.length;
                      currCard = theCards[index];
                    });
                  },
                  label: const Text(''),
                  icon: const Icon(Icons.arrow_forward)),
            ]),
      ),
    );
  }
}
