import 'package:contact/main.dart';
import 'package:edu_comms_home/main.dart';
import 'package:flutter/material.dart';

class UmbrellaApp {
  final String route;

  const UmbrellaApp({required this.route});

  Widget getApp() {
    switch (UmbrellaModules.valueOf(route)) {
      case UmbrellaModules.enumContacts:
        return const ContactsApp();
      case UmbrellaModules.enumEduComms:
        return const EduCommsApp();
      default:
        return const ContactsApp();
    }
  }
}

enum UmbrellaModules {
  enumContacts,
  enumEduComms;

  static UmbrellaModules valueOf(String string) =>
      UmbrellaModules.values.singleWhere((e) => e.toString() == "UmbrellaModules.$string");
}
