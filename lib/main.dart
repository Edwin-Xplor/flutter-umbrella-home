import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:contact/src/my_app.dart';
import 'package:flutter_umbrella_home_module/umbrella_app.dart';
// import 'package:edu_comms_home/src/my_app.dart';

void main() async {
  runApp(UmbrellaApp(route: window.defaultRouteName).getApp());
}

@pragma('vm:entry-point')
void contactsModule() => runApp(const ContactsApp());

// @pragma('vm:entry-point')
// void eduCommsModule() => runApp(const EduCommsApp());