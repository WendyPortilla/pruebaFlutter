// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for ios - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.macOS:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for macos - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.windows:
        return windows;
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyCZ7dyU6jTsRxp5aUFKfGpLDDze7m_plDI',
    appId: '1:444887348806:web:7bc483f16ad94447b6bc47',
    messagingSenderId: '444887348806',
    projectId: 'app-poke-cedea',
    authDomain: 'app-poke-cedea.firebaseapp.com',
    storageBucket: 'app-poke-cedea.firebasestorage.app',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCWxUanUBtulhlBVupMOzTkzQWZ6vKgrwY',
    appId: '1:444887348806:android:0e4d4c6efc00a0acb6bc47',
    messagingSenderId: '444887348806',
    projectId: 'app-poke-cedea',
    storageBucket: 'app-poke-cedea.firebasestorage.app',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyAuS5sGenS7HU-x5oGy2dNKNCY8xtVVpAI',
    appId: '1:444887348806:web:70de8df6d39203b5b6bc47',
    messagingSenderId: '444887348806',
    projectId: 'app-poke-cedea',
    authDomain: 'app-poke-cedea.firebaseapp.com',
    storageBucket: 'app-poke-cedea.firebasestorage.app',
  );

}