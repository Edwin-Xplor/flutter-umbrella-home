import 'package:contact/main.dart' as contacts;
import 'package:edu_comms_home/main.dart' as edu_comms;

class UmbrellaApp {
  final String route;

  const UmbrellaApp({required this.route});

  runApp() {
    switch (UmbrellaModules.valueOf(route)) {
      case UmbrellaModules.enumContacts:
        return contacts.main();
      case UmbrellaModules.enumEduComms:
        return edu_comms.main();
    }
  }
}

enum UmbrellaModules {
  enumContacts,
  enumEduComms;

  static UmbrellaModules valueOf(String string) =>
      UmbrellaModules.values.singleWhere((e) => e.toString() == "UmbrellaModules.$string");
}
