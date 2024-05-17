import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/card_item_temp.dart';

/*  Class: StudyPicture, functionality of StudyWord's associated Image
    Parameters: isOnFront,  bool,   see Item doc
                imageLink,  String, image link of form "assets/images/..."
*/
class StudyPicture extends StudyItem {
  /// Study Picture Constructor
  const StudyPicture(
      {super.key, required super.isOnFront, required this.imageLink});

  final String imageLink;

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(maxWidth: 250.0, maxHeight: 200.0),
        child: ClipRRect(
            borderRadius: BorderRadius.circular(30),
            child: Image(image: AssetImage(imageLink))));
  }
}
