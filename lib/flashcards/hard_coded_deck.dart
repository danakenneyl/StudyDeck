import 'package:study_deck/flashcards/card_content/hard_coded_card_content.dart';

// Will not need these once the list moves to the create card file
import 'package:study_deck/flashcards/card_content/card_items/study_audio.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_definition.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_picture.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_pronunciation.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_translation.dart';
import 'package:study_deck/flashcards/card_content/card_items/study_word.dart';

List<CardContent> content = [
  const CardContent(frontContent: [
    StudyWord(isOnFront: true, vocabWord: "word 1: is not reversed")
  ], backContent: [
    StudyDefinition(
        isOnFront: false,
        definition: "a basic unit of language that carries meaning")
  ]),
  const CardContent(frontContent: [
    StudyWord(isOnFront: true, vocabWord: "word 2: is not reversed")
  ], backContent: [
    StudyPicture(
        isOnFront: false, imageLink: "assets/images/ChinChimineyChin-ree.png")
  ]),
  CardContent(frontContent: const [
    StudyWord(isOnFront: true, vocabWord: "word 3: is not reversed")
  ], backContent: [
    StudyAudio(isOnFront: false, audioLink: "audio/ma.m4a")
  ]),
  const CardContent(frontContent: [
    StudyWord(isOnFront: true, vocabWord: "word 4: is not reveresed")
  ], backContent: [
    StudyTranslation(isOnFront: false, translation: "palabra")
  ]),
  const CardContent(frontContent: [
    StudyWord(isOnFront: true, vocabWord: "word 5: is not reveresed")
  ], backContent: [
    StudyPronunciation(isOnFront: false, pronunciation: "[wɹd]")
  ]),
  const CardContent(
    frontContent: [
      StudyWord(isOnFront: true, vocabWord: "word 1: is not reversed")
    ],
    backContent: [
      StudyDefinition(
          isOnFront: false,
          definition: "a basic unit of language that carries meaning")
    ],
    reverse: true,
  ),
  const CardContent(
    frontContent: [
      StudyWord(isOnFront: true, vocabWord: "word 2: is not reversed")
    ],
    backContent: [
      StudyPicture(
          isOnFront: false, imageLink: "assets/images/ChinChimineyChin-ree.png")
    ],
    reverse: true,
  ),
  CardContent(
    frontContent: const [
      StudyWord(isOnFront: true, vocabWord: "word 3: is not reversed")
    ],
    backContent: [StudyAudio(isOnFront: false, audioLink: "audio/ma.m4a")],
    reverse: true,
  ),
  const CardContent(
    frontContent: [
      StudyWord(isOnFront: true, vocabWord: "word 4: is not reveresed")
    ],
    backContent: [StudyTranslation(isOnFront: false, translation: "palabra")],
    reverse: true,
  ),
  const CardContent(
    frontContent: [
      StudyWord(isOnFront: true, vocabWord: "word 5: is not reveresed")
    ],
    backContent: [StudyPronunciation(isOnFront: false, pronunciation: "[wɹd]")],
    reverse: true,
  ),
];
