import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:omstore/firebase_options.dart';
import 'package:omstore/om_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const OmStoreApp());
}



