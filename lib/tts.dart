import 'package:flutter_tts/flutter_tts.dart';

class TTS {
  static const languageRU = "ru-RU";

  Future<bool> haveLanguageRU() {
    return Future(() async {
      final languages = await this.languages();
      if (languages.contains(languageRU)) {
        return true;
      } else {
        return false;
      }
    });
  }

  Future<List<String>> languages() {
    return _tts.getLanguages.then((value) => _toStringList(value));
  }

  Future<bool> speak(String text) {
    return _tts.speak(text).then((value) => _numberToBool(value));
  }

  Future<bool> stop() {
    return _tts.stop().then((value) => _numberToBool(value));
  }

  Future<bool> setLanguage(String language) {
    return _tts.setLanguage(language).then((value) => _numberToBool(value));
  }

  bool _numberToBool(int value) {
    if (value == 1) {
      return true;
    } else {
      return false;
    }
  }

  List<String> _toStringList(List<Object?> objects) {
    final languages = <String>[];
    for (var obj in objects) {
      languages.add(obj as String);
    }
    return languages;
  }

  final _tts = FlutterTts();
}
