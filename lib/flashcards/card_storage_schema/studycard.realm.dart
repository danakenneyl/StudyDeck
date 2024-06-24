// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'studycard.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

// ignore_for_file: type=lint
class StudyCard extends _StudyCard
    with RealmEntity, RealmObjectBase, RealmObject {
  StudyCard(
    ObjectId id,
    String deckName, {
    Iterable<StudyCardItem> frontContent = const [],
    Iterable<StudyCardItem> backContent = const [],
  }) {
    RealmObjectBase.set(this, 'id', id);
    RealmObjectBase.set(this, 'deckName', deckName);
    RealmObjectBase.set<RealmList<StudyCardItem>>(
        this, 'frontContent', RealmList<StudyCardItem>(frontContent));
    RealmObjectBase.set<RealmList<StudyCardItem>>(
        this, 'backContent', RealmList<StudyCardItem>(backContent));
  }

  StudyCard._();

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
  RealmList<StudyCardItem> get frontContent =>
      RealmObjectBase.get<StudyCardItem>(this, 'frontContent')
          as RealmList<StudyCardItem>;
  @override
  set frontContent(covariant RealmList<StudyCardItem> value) =>
      throw RealmUnsupportedSetError();

  @override
  RealmList<StudyCardItem> get backContent =>
      RealmObjectBase.get<StudyCardItem>(this, 'backContent')
          as RealmList<StudyCardItem>;
  @override
  set backContent(covariant RealmList<StudyCardItem> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<StudyCard>> get changes =>
      RealmObjectBase.getChanges<StudyCard>(this);

  @override
  Stream<RealmObjectChanges<StudyCard>> changesFor([List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<StudyCard>(this, keyPaths);

  @override
  StudyCard freeze() => RealmObjectBase.freezeObject<StudyCard>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'deckName': deckName.toEJson(),
      'frontContent': frontContent.toEJson(),
      'backContent': backContent.toEJson(),
    };
  }

  static EJsonValue _toEJson(StudyCard value) => value.toEJson();
  static StudyCard _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'deckName': EJsonValue deckName,
        'frontContent': EJsonValue frontContent,
        'backContent': EJsonValue backContent,
      } =>
        StudyCard(
          fromEJson(id),
          fromEJson(deckName),
          frontContent: fromEJson(frontContent),
          backContent: fromEJson(backContent),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(StudyCard._);
    register(_toEJson, _fromEJson);
    return SchemaObject(ObjectType.realmObject, StudyCard, 'StudyCard', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('deckName', RealmPropertyType.string),
      SchemaProperty('frontContent', RealmPropertyType.object,
          linkTarget: 'StudyCardItem',
          collectionType: RealmCollectionType.list),
      SchemaProperty('backContent', RealmPropertyType.object,
          linkTarget: 'StudyCardItem',
          collectionType: RealmCollectionType.list),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}

class StudyCardItem extends _StudyCardItem
    with RealmEntity, RealmObjectBase, RealmObject {
  StudyCardItem(
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

  StudyCardItem._();

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
  Stream<RealmObjectChanges<StudyCardItem>> get changes =>
      RealmObjectBase.getChanges<StudyCardItem>(this);

  @override
  Stream<RealmObjectChanges<StudyCardItem>> changesFor(
          [List<String>? keyPaths]) =>
      RealmObjectBase.getChangesFor<StudyCardItem>(this, keyPaths);

  @override
  StudyCardItem freeze() => RealmObjectBase.freezeObject<StudyCardItem>(this);

  EJsonValue toEJson() {
    return <String, dynamic>{
      'id': id.toEJson(),
      'widgetName': widgetName.toEJson(),
      'content': content.toEJson(),
      'isOnFront': isOnFront.toEJson(),
    };
  }

  static EJsonValue _toEJson(StudyCardItem value) => value.toEJson();
  static StudyCardItem _fromEJson(EJsonValue ejson) {
    return switch (ejson) {
      {
        'id': EJsonValue id,
        'widgetName': EJsonValue widgetName,
        'content': EJsonValue content,
        'isOnFront': EJsonValue isOnFront,
      } =>
        StudyCardItem(
          fromEJson(id),
          fromEJson(widgetName),
          fromEJson(content),
          fromEJson(isOnFront),
        ),
      _ => raiseInvalidEJson(ejson),
    };
  }

  static final schema = () {
    RealmObjectBase.registerFactory(StudyCardItem._);
    register(_toEJson, _fromEJson);
    return SchemaObject(
        ObjectType.realmObject, StudyCardItem, 'StudyCardItem', [
      SchemaProperty('id', RealmPropertyType.objectid, primaryKey: true),
      SchemaProperty('widgetName', RealmPropertyType.string),
      SchemaProperty('content', RealmPropertyType.string),
      SchemaProperty('isOnFront', RealmPropertyType.bool),
    ]);
  }();

  @override
  SchemaObject get objectSchema => RealmObjectBase.getSchema(this) ?? schema;
}
