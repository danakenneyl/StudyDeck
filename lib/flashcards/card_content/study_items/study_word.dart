import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/study_item.dart';

/*  Class: StudyWord, functionality of target L2 vocabulary word
    Parameters: isOnFront,  bool,   see Item doc
                vocabWord,  String, text to be displayed on card
*/
class StudyWord extends StudyItem {
  // Word Constructor
  const StudyWord(
      {super.key, required super.isOnFront, required this.vocabWord});

  final String vocabWord;

  @override
  Widget build(BuildContext context) {
    return Text(vocabWord);
  }
}
