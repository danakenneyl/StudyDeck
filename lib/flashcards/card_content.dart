/*  Class: CardContent stores information displayed on flashcard
    Parameters: vocabWord,  string 
                definition, string
                audioLink,  string, format "audio/..."
                imageLink,  string, format assets/images/..."
                flip,    bool,   default false
*/
class CardContent {
  final String? vocabWord;
  final String? definition;
  final String? audioLink;
  final String? imageLink;
  final String? pronounce;
  final bool reverse;
  CardContent(
      {this.vocabWord,
      this.definition,
      this.audioLink,
      this.imageLink,
      this.pronounce,
      this.reverse = false});
}

List<CardContent> content = [
  CardContent(definition: 'definition', vocabWord: 'vocabWord'),
  CardContent(definition: 'definition1', vocabWord: 'vocabWord1'),
  CardContent(
      definition: 'definition2', vocabWord: 'vocabWord2', reverse: true),
  CardContent(
      definition: 'definition3', vocabWord: 'vocabWord3', reverse: true),
  CardContent(
      vocabWord: 'def', imageLink: 'assets/images/ChinChimineyChin-ree.png'),
  CardContent(
      vocabWord: 'def',
      imageLink: 'assets/images/ChinChimineyChin-ree.png',
      reverse: true),
  CardContent(vocabWord: 'def1', audioLink: 'audio/ma.m4a'),
  CardContent(vocabWord: 'def1', audioLink: 'audio/ma.m4a', reverse: true),
  CardContent(
      vocabWord: 'def2',
      audioLink: 'audio/ma.m4a',
      imageLink: 'assets/images/ChinChimineyChin-ree.png'),
  CardContent(
      vocabWord: 'def2',
      audioLink: 'audio/ma.m4a',
      imageLink: 'assets/images/ChinChimineyChin-ree.png',
      reverse: true),
  CardContent(
      definition: 'defining defining defining',
      vocabWord: 'def2',
      audioLink: 'audio/ma.m4a',
      imageLink: 'assets/images/ChinChimineyChin-ree.png'),
  CardContent(
      definition: 'defining defining defining',
      vocabWord: 'def2',
      audioLink: 'audio/ma.m4a',
      imageLink: 'assets/images/ChinChimineyChin-ree.png',
      reverse: true),
];
