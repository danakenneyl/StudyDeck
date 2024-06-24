import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/flashcard.dart';
import 'package:study_deck/flashcards/card_storage_schema/studycard.dart';
import 'package:realm/realm.dart';

// Flashcard Item Type Imports //
import 'package:study_deck/flashcards/card_content/card_items/study_audio.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_definition.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_picture.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_pronunciation.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_translation.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_word.dart';
//        //        //        //

// Function: Converts data from RealmDatabase into flutter widgets
List<Flashcard> realmListToFlashcards(RealmResults<StudyCard> theCards) {
  List<Flashcard> flashcards = [];
  for (int i = 0; i < theCards.length; i++) {
    StudyCard studyCard = theCards[i];
    List<Widget> onTheFront = [];
    List<Widget> onTheBack = [];

    RealmList<StudyCardItem> front = studyCard.frontContent;
    for (int j = 0; j < front.length; j++) {
      StudyCardItem cardItem = front[j];
      String content = cardItem.content;
      String widgetName = cardItem.widgetName;

      // To be rewritten as a factory in later iterations
      switch (widgetName) {
        case 'StudyAudio':
          break;
        case 'StudyDefinition':
          onTheFront.add(StudyDefinition(
              isOnFront: cardItem.isOnFront, definition: content));
          break;
        case 'StudyPicture':
          break;
        case 'StudyPronunciation':
          break;
        case 'StudyTranslation':
          break;
        case 'StudyWord':
          onTheFront.add(StudyWord(isOnFront: true, vocabWord: content));
          break;
      }
    }

    RealmList<StudyCardItem> back = studyCard.backContent;
    for (int k = 0; k < back.length; k++) {
      StudyCardItem studyCardItem = back[k];
      String content = studyCardItem.content;
      String widgetName = studyCardItem.widgetName;

      // To be rewritten as a factory in later iterations
      switch (widgetName) {
        case 'StudyAudio':
          break;
        case 'StudyDefinition':
          onTheBack.add(StudyDefinition(
              isOnFront: studyCardItem.isOnFront, definition: content));
          break;
        case 'StudyPicture':
          break;
        case 'StudyPronunciation':
          break;
        case 'StudyTranslation':
          break;
        case 'StudyWord':
          onTheBack.add(StudyWord(
              isOnFront: studyCardItem.isOnFront, vocabWord: content));
          break;
      }
    }
    flashcards.add(Flashcard(frontContent: onTheFront, backContent: onTheBack));
  }
  return flashcards;
}
