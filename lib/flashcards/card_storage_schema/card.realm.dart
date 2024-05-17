// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'card.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class Card extends _Card with RealmEntity, RealmObjectBase, RealmObject {
  Card(
    ObjectId id,
    String deckName, {
    Iterable<CardItem> frontContent = const [],
    Iterable<CardItem> backContent = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'deckName', deckName);
    RealmObjectBase.set<RealmList<CardItem>>(
        this, 'frontContent', RealmList<CardItem>(frontContent));
    RealmObjectBase.set<RealmList<CardItem>>(
        this, 'backContent', RealmList<CardItem>(backContent));
  }

  Card._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get deckName =>
      RealmObjectBase.get<String>(this, 'deckName') as String;
  @override
  set deckName(String value) => RealmObjectBase.set(this, 'deckName', value);

  @override
  RealmList<CardItem> get frontContent =>
      RealmObjectBase.get<CardItem>(this, 'frontContent')
          as RealmList<CardItem>;
  @override
  set frontContent(covariant RealmList<CardItem> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<CardItem> get backContent =>
      RealmObjectBase.get<CardItem>(this, 'backContent') as RealmList<CardItem>;
  @override
  set backContent(covariant RealmList<CardItem> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Card>> get changes =>
      RealmObjectBase.getChanges<Card>(this);

  @override
  Stream<RealmObjectChanges<Card>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<Card>(this, keyPaths);

  @override
  Card freeze() => RealmObjectBase.freezeObject<Card>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'deckName': deckName.toEJson(),
      'frontContent': frontContent.toEJson(),
      'backContent': backContent.toEJson(),
    };
  }

  static EJsonValue _toEJson(Card value) => value.toEJson();
  static Card _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'deckName': EJsonValue deckName,
        'frontContent': EJsonValue frontContent,
        'backContent': EJsonValue backContent,
      } =>
        Card(
          fromEJson(id),
          fromEJson(deckName),
          frontContent: fromEJson(frontContent),
          backContent: fromEJson(backContent),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(Card._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, Card, 'Card', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('deckName', RealmPropertyType.string),
      SchemaProperty('frontContent', RealmPropertyType.object,
          linkTarget: 'CardItem', collectionType: RealmCollectionType.list),
      SchemaProperty('backContent', RealmPropertyType.object,
          linkTarget: 'CardItem', collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class CardItem extends _CardItem
    with RealmEntity, RealmObjectBase, RealmObject {
  CardItem(
    ObjectId id,
    String widgetName,
    String content,
    bool isOnFront,
  ) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'widgetName', widgetName);
    RealmObjectBase.set(this, 'content', content);
    RealmObjectBase.set(this, 'isOnFront', isOnFront);
  }

  CardItem._();

  @override
  ObjectId get id => RealmObjectBase.get<ObjectId>(this, 'id') as ObjectId;
  @override
  set id(ObjectId value) => RealmObjectBase.set(this, 'id', value);

  @override
  String get widgetName =>
      RealmObjectBase.get<String>(this, 'widgetName') as String;
  @override
  set widgetName(String value) =>
      RealmObjectBase.set(this, 'widgetName', value);

  @override
  String get content => RealmObjectBase.get<String>(this, 'content') as String;
  @override
  set content(String value) => RealmObjectBase.set(this, 'content', value);

  @override
  bool get isOnFront => RealmObjectBase.get<bool>(this, 'isOnFront') as bool;
  @override
  set isOnFront(bool value) => RealmObjectBase.set(this, 'isOnFront', value);

  @override
  Stream<RealmObjectChanges<CardItem>> get changes =>
      RealmObjectBase.getChanges<CardItem>(this);

  @override
  Stream<RealmObjectChanges<CardItem>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<CardItem>(this, keyPaths);

  @override
  CardItem freeze() => RealmObjectBase.freezeObject<CardItem>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'widgetName': widgetName.toEJson(),
      'content': content.toEJson(),
      'isOnFront': isOnFront.toEJson(),
    };
  }

  static EJsonValue _toEJson(CardItem value) => value.toEJson();
  static CardItem _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'widgetName': EJsonValue widgetName,
        'content': EJsonValue content,
        'isOnFront': EJsonValue isOnFront,
      } =>
        CardItem(
          fromEJson(id),
          fromEJson(widgetName),
          fromEJson(content),
          fromEJson(isOnFront),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(CardItem._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, CardItem, 'CardItem', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('widgetName', RealmPropertyType.string),
      SchemaProperty('content', RealmPropertyType.string),
      SchemaProperty('isOnFront', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
