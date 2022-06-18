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

  final FlutterTts _flutterTts = FlutterTts();
}
