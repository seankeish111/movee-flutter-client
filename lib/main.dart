import 'auth_gate.dart';
import 'dart:async';
import 'package:firebase_core/firebase_core.dart';
import 'package:movee/firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:parse_server_sdk_flutter/parse_server_sdk.dart';





void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final keyApplicationId = '2PU1weaeX52ATYyArgdEQYO6Epiy0jSMeZTYrNvq';
  final keyClientKey = 'lBA973lKk2rpnUXCZ2vrtw3EZvwQV72g44UZuEtX';
  final keyParseServerUrl = 'https://parseapi.back4app.com';

  await Parse().initialize(keyApplicationId, keyParseServerUrl,
      clientKey: keyClientKey, debug: true);

  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Movee',

      home: AuthGate(),
    );
  }
}



