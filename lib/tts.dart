import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  static const ruLang = "ru-RU";

  Future<bool> haveRu() {
    return Future(() async {
      final languages = await _flutterTts.getLanguages;
      if (languages.contains(ruLang)) {
        _flutterTts.setLanguage(ruLang);
        return true;
      } else {
        return false;
      }
    });
  }

  languages() {
    return _flutterTts.getLanguages;
  }

  Future<bool> speak(String text) {
    return _flutterTts.speak(text).then((value) => _oneToTrue(value));
  }

  Future<bool> stop() {
    return _flutterTts.stop().then((value) => _oneToTrue(value));
  }

  bool _oneToTrue(int value) {
    if (value == 1) {
      return true;
    } else {
      return false;
    }
  }

  final FlutterTts _flutterTts = FlutterTts();
}
