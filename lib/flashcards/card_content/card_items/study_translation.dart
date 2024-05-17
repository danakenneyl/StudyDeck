import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/card_item_temp.dart';

/*  Class: StudyTranslation, functionality of StudyWord's L1 translation
    Parameters: isOnFront,    bool,   see Item doc
                translation,  String, text to be displayed on card
*/
class StudyTranslation extends StudyItem {
  /// Study Translation Constructor
  const StudyTranslation(
      {super.key, required super.isOnFront, required this.translation});

  final String translation;

  @override
  Widget build(BuildContext context) {
    return Text(translation);
  }
}
