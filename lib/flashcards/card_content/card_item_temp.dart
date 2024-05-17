import 'package:flutter/material.dart';

/*  Class: Item, handles shared functionality for all flashcard items
    Parameters: isOnFront,  bool, item appears on card's front if true
*/
class StudyItem extends StatelessWidget {
  // Item Constructor
  const StudyItem({super.key, required this.isOnFront});

  final bool isOnFront;

  @override
  Widget build(BuildContext context) {
    return const Text('');
  }
}
