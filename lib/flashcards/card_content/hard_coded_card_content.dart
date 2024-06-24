import 'package:flutter/material.dart';

/*  Class: CardContent stores information displayed on flashcard
    Parameters: frontContent, List<StudyItem>,  items appear on card's front 
                backContent,  List<StudyItem>,  items appear on card's back
                reverse,      bool,             if true, frontContent appears 
                                                on card's back and backContent
                                                appears on card's front
*/
class CardContent {
  const CardContent({
    required this.frontContent,
    required this.backContent,
    this.reverse = false,
  });

  final List<Widget> frontContent;
  final List<Widget> backContent;
  final bool reverse;
}
