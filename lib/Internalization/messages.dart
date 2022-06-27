import 'package:get/get.dart';

class Messages extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'en US': {
          'hello ': 'Hello',
        },
        'hi_IN': {
          'hello': 'Namaskar',
        },
        'fr_FR': {
          'hello': 'Bonjour',
        }
      };
}
