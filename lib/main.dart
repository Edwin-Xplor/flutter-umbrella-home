import 'dart:ui';

import 'package:contact/main.dart' as contacts;
import 'package:edu_comms_home/main.dart' as edu_comms;
import 'package:flutter_umbrella_home/umbrella_app.dart';

void main() async => UmbrellaApp(route: window.defaultRouteName).runApp();

@pragma('vm:entry-point')
void contactsModule() => contacts.main();

@pragma('vm:entry-point')
void eduCommsModule() => edu_comms.main();
