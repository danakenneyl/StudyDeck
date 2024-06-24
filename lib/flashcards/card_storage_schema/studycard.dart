import 'package:realm/realm.dart';
part 'studycard.realm.dart';

/*  Class: _Card private class stores flashcard
    Parameters: id,           ObjectID,         unique identifier
                deckName,     String,           cards belong to parent deck
                frontContent, List<_CardItem>,  items displayed on card front
                backContent,  List<_CardItem>,  items displayed on card back                                             
*/
@RealmModel()
class _StudyCard {
  @PrimaryKey()
  late ObjectId id;
  late String deckName;
  late List<_StudyCardItem> frontContent;
  late List<_StudyCardItem> backContent;
}

/*  Class: _CardItem private class single unit to be displayed on flashcard
    Parameters: id,         ObjectID, unique identifier
                widgetName, String,   widgets include audio, definition, 
                                      picture, pronunciation, translation,
                                      word
                content,    String,   A link for audio, pronunciation, and
                                      picture, Actual content for definition,
                                      translation, and word
                isOnFront   bool,     determines _Card class list assignment
*/
@RealmModel()
class _StudyCardItem {
  @PrimaryKey()
  late ObjectId id;
  late String widgetName;
  late String content;
  late bool isOnFront;
}
