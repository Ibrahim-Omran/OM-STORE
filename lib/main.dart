import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:omstore/core/bloc/bloc_observer.dart';
import 'package:omstore/core/cache/cache_helper.dart';

import 'package:omstore/core/service/service_locator.dart';
import 'package:omstore/firebase_options.dart';
import 'package:omstore/om_store_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  initServiceLocator();
  await sl<CacheHelper>().init();
  Bloc.observer = MyBlocObserver();

  runApp(OmStoreApp());
}
