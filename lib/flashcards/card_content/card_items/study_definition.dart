import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/card_item_temp.dart';

/*  Class: StudyDefinition, functionality of StudyWord's definition
    Parameters: isOnFront,  bool,   see Item doc
                definition, String, text to be displayed on card
*/
class StudyDefinition extends StudyItem {
  /// Study Definition Constructor
  const StudyDefinition(
      {super.key, required super.isOnFront, required this.definition});

  final String definition;

  @override
  Widget build(BuildContext context) {
    return Text(definition);
  }
}
