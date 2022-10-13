import 'package:contact/main.dart';
import 'package:flutter/material.dart';

class UmbrellaApp {
  final String route;

  const UmbrellaApp({required this.route});

  Widget getApp() {
    switch (UmbrellaModules.valueOf(route)) {
    // UmbrellaModule is class holding static strings.
      case UmbrellaModules
          .enumContacts: // UmbrellaModules.login = 'login_module'
        return const ContactsApp();
      default:
        return const ContactsApp();
    }
  }
}

enum UmbrellaModules {
  enumContacts;

  static UmbrellaModules valueOf(String string) => UmbrellaModules.values.singleWhere((e) => e.toString() == "UmbrellaModules.$string");
}