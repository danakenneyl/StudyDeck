import 'package:realm/realm.dart';
part 'card.realm.dart';

@RealmModel()
class _Card {
  @PrimaryKey()
  late ObjectId id;
  late String deckName;
  late List<_CardItem> frontContent;
  late List<_CardItem> backContent;
}

@RealmModel()
class _CardItem {
  @PrimaryKey()
  late ObjectId id;
  late String widgetName;
  late String content;
  late bool isOnFront;
}
