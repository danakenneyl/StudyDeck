import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:realm/realm.dart';

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
  bool? isChecked = false;

  // Controllers for text fields
  final TextEditingController frontController = TextEditingController();
  final TextEditingController backController = TextEditingController();

  // The database
  late Realm realm;

  @override
  void initState() {
    super.initState();
    // Configure database
    final config =
        Configuration.local([StudyCard.schema, StudyCardItem.schema]);
    realm = Realm(config);
  }

  @override
  void dispose() {
    realm.close();
    frontController.dispose();
    backController.dispose();
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
          child: Column(children: <Widget>[
            Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      child: Text("Front"),
                    ),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: frontController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Word',
                          // onSubmitted: (String value) async {}
                        ),
                      ),
                    ),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      child: Text("Back"),
                    ),
                    SizedBox(
                      width: 250,
                      child: TextField(
                        controller: backController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(),
                          labelText: 'Definition',
                          // onSubmitted: (String value) async {}
                        ),
                      ),
                    ),
                  ]),
              Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(
                      child: Text("Reverse"),
                    ),
                    Checkbox(
                      value: isChecked,
                      onChanged: (bool? value) {
                        setState(() {
                          isChecked = value;
                          print("where does this print $value");
                        });
                      },
                    ),
                  ]),
            ]),
            const SizedBox(
                height: 20), // Add some space between the row and the button
            ElevatedButton(
                child: const Text("Submit"),
                onPressed: () {
                  // Access the text from the controllers
                  String frontText = frontController.text;
                  String backText = backController.text;

                  // Add to database
                  final newCard = StudyCard(
                    ObjectId(), // id
                    "Sample Deck", // deck name
                    frontContent: [
                      StudyCardItem(
                        ObjectId(), // id
                        "StudyWord", // widget name
                        frontText, // content
                        true, // isOnFront
                      ),
                    ],
                    backContent: [
                      StudyCardItem(
                        ObjectId(), // id
                        "StudyDefinition", // widget name
                        backText, // content
                        false, // isOnFront
                      ),
                    ],
                  );

                  realm.write(() {
                    realm.add(newCard);
                  });

                  print("Theoretically, you've just put s/t in the database");
                })
          ]),
        ));
  }
}

// Sample Deck 
//  Dog: 
//  a fluffy companion domesticated by humans to aid in laborious tasks. 
//  Modern day varieties are kept as household pets solely for love and affection


// Sample Deck 
//  Cat: 
//  a fluffy companion that domesticated itself to hunt small prey
//  often more aloof and solitary, they still make popular modern day pets