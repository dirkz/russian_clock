import 'package:text_to_speech/text_to_speech.dart';

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
    return _tts.getLanguages();
  }

  Future<bool> speak(String text) {
    return _tts.speak(text).then((value) => _optionalBoolToBool(value));
  }

  Future<bool> stop() {
    return _tts.stop().then((value) => _optionalBoolToBool(value));
  }

  Future<bool> setLanguage(String language) {
    return _tts.setLanguage(language).then((value) => _optionalBoolToBool(value));
  }

  bool _optionalBoolToBool(bool? value) {
    if (value == true) {
      return true;
    } else {
      return false;
    }
  }

  final _tts = TextToSpeech();
}
