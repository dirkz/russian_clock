import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  static const languageRU = "ru-RU";

  Future<bool> haveLanguageRU() {
    return Future(() async {
      final languages = await _tts.getLanguages;
      if (languages.contains(languageRU)) {
        return true;
      } else {
        return false;
      }
    });
  }

  languages() {
    return _tts.getLanguages;
  }

  Future<bool> speak(String text) {
    return _tts.speak(text).then((value) => _oneToTrue(value));
  }

  Future<bool> stop() {
    return _tts.stop().then((value) => _oneToTrue(value));
  }

  Future<bool> setLanguage(String language) {
    return _tts.setLanguage(language).then((value) => _oneToTrue(value));
  }

  bool _oneToTrue(int value) {
    if (value == 1) {
      return true;
    } else {
      return false;
    }
  }

  final FlutterTts _tts = FlutterTts();
}
