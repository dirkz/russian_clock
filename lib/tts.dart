import 'package:tts_plugin/tts_plugin.dart';

class TTS {
  static const languageRU = "ru-RU";

  Future<bool> haveLanguageRU() async {
    const lang1 = languageRU;
    final lang2 = languageRU.replaceFirst('-', '_');
    final languages = await this.languages();
    if (languages.contains(lang1) || languages.contains(lang2)) {
      return true;
    }
    return false;
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
    final lang1 = language;
    final lang2 = language.replaceFirst('-', '_');

    final allVoices = await _tts.getVoices();
    for (var voice in allVoices) {
      if (voice.language == lang1 || voice.language == lang2) {
        return _tts.setVoice(voice);
      }
    }
    return false;
  }

  final _tts = TtsPlugin();
}
