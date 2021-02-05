import 'en_MX/en_mx.dart';
import 'en_US/en_us.dart';
import 'pt_BR/pt_br.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'pt_BR': ptBR,
    'en_US': enUS,
    'es_mx': esMX,
  };
}
