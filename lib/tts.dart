import 'package:tts_plugin/tts_plugin.dart';

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

  Future<List<String>> languages() async {
    final voices = await _tts.getVoices();
    var languageSet = <String>[];
    for (var voice in voices) {
      languageSet.add(voice.language);
    }
    return languageSet.toList();
  }

  Future<bool> speak(String text) {
    return _tts.speak(text);
  }

  Future<bool> stop() {
    return _tts.cancel();
  }

  Future<bool> setLanguage(String language) async {
    final allVoices = await _tts.getVoices();
    for (var voice in allVoices) {
      if (voice.language == language) {
        return _tts.setVoice(voice);
      }
    }
    return false;
  }

  final _tts = TtsPlugin();
}
