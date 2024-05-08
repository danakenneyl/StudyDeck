import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:study_deck/flashcards/card_content.dart';

// Class: Flashcard, CardContent info and flipping animation management
class Flashcard extends StatefulWidget {
  const Flashcard({
    super.key,
    required this.cardContent,
  });

  final CardContent cardContent;

  @override
  State<Flashcard> createState() => _Flashcard();
}

// Class: _Flashcard, state management and UI for Flashcard
class _Flashcard extends State<Flashcard> {
  @override
  Widget build(BuildContext context) {
    if (widget.cardContent.reverse) {
      // Basic Format, definitions/associations on the front, vocab on back
      return FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.VERTICAL,
          side: CardSide.FRONT,
          front: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: addFrontContent(),
            ),
          ),
          back: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: addBackContent(),
            ),
          ));
    } else {
      // Flipped Format, definitions/associations on back, vobac on front
      return FlipCard(
          fill: Fill.fillBack,
          direction: FlipDirection.VERTICAL,
          side: CardSide.BACK,
          front: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: addBackContent(),
            ),
          ),
          back: Container(
            decoration: decorate(),
            constraints: setSize(),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: addFrontContent(),
            ),
          ));
    }
  }

  // Brief: define visual appearance of flashcard
  BoxDecoration decorate() {
    return const BoxDecoration(
        color: Color.fromARGB(255, 161, 161, 255),
        // Create rounded corners
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ));
  }

  // Brief: define size of flashcard
  BoxConstraints setSize() {
    return const BoxConstraints(
      minWidth: 300,
      minHeight: 150,
      maxWidth: 900,
      maxHeight: 450,
    );
  }

  // Brief:
  List<Widget> addFrontContent() {
    final AudioPlayer audioPlayer = AudioPlayer();
    List<Widget> column = [];
    final current = widget.cardContent;

    // Definition on Card's front
    if (current.definition != null &&
        (current.audioLink == null && current.imageLink == null)) {
      column.add(Text((widget.cardContent.definition!)));
    }
    // Image on Card's front
    if (widget.cardContent.imageLink != null) {
      column.add(Container(
          constraints: const BoxConstraints(maxWidth: 250.0, maxHeight: 200.0),
          child: Image(image: AssetImage(widget.cardContent.imageLink!))));
    }
    // Audio on Card's front
    if (widget.cardContent.audioLink != null) {
      column.add(ElevatedButton.icon(
          onPressed: () async {
            await audioPlayer.play(AssetSource(widget.cardContent.audioLink!));
          },
          label: const Text(''),
          icon: const Icon(Icons.audio_file)));
    }
    return column;
  }

  List<Widget> addBackContent() {
    List<Widget> column = [];
    final current = widget.cardContent;

    // Vocab on card's back
    if (widget.cardContent.vocabWord != null) {
      column.add(Text(widget.cardContent.vocabWord!));
    }

    // Definition on card's back
    if (current.definition != null &&
        (current.audioLink != null || current.imageLink != null)) {
      column.add(Text((widget.cardContent.definition!)));
    }

    return column;
  }
}
