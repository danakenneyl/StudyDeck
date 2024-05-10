import 'package:flutter/material.dart';
import 'package:study_deck/flashcards/card_content/study_item.dart';
import 'package:audioplayers/audioplayers.dart';

/*  Class: StudyAudio, functionality of StudyWord's audio pronunciation
    Parameters: isOnFront,  bool,   see Item doc
                audioLink,  String, audio link of form "audio/..."
              */
class StudyAudio extends StudyItem {
  /// Study Audio Constructor
  StudyAudio({super.key, required super.isOnFront, required this.audioLink});

  final String audioLink;

  final AudioPlayer audioPlayer = AudioPlayer();

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () async {
        await audioPlayer.play(AssetSource(audioLink));
      },
      label: const Text(''),
      icon: const Icon(
        Icons.audio_file,
      ),
      style: ElevatedButton.styleFrom(
        padding: const EdgeInsets.all(15),
      ),
    );
  }
}
