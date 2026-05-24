import 'package:speech_to_text/speech_to_text.dart';

class VoiceService {

  final SpeechToText speech = SpeechToText();

  Future<void> startListening(Function triggerSOS) async {

    bool available = await speech.initialize();

    if (available) {
      speech.listen(
        onResult: (result) {
          String text = result.recognizedWords.toLowerCase();

          if (text.contains("help") ||
              text.contains("save me") ||
              text.contains("sos")) {
            triggerSOS();
          }
        },
      );
    }
  }
}