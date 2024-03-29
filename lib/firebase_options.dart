// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
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
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
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
    apiKey: 'AIzaSyAOaE0-7QiF2Nx5xZy97wBOxGKnD-wwpq8',
    appId: '1:547915067197:web:133d74af29849121c3df54',
    messagingSenderId: '547915067197',
    projectId: 'chatapp-2b484',
    authDomain: 'chatapp-2b484.firebaseapp.com',
    storageBucket: 'chatapp-2b484.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyD33D5v8PRBGT9E3vChp1g2nIzS46pIw-w',
    appId: '1:547915067197:android:7746e89416254a3cc3df54',
    messagingSenderId: '547915067197',
    projectId: 'chatapp-2b484',
    storageBucket: 'chatapp-2b484.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAWju82T1-Vc4RLEjZm_HyrQn4_GBB3dAE',
    appId: '1:547915067197:ios:3536413d6a6e96f2c3df54',
    messagingSenderId: '547915067197',
    projectId: 'chatapp-2b484',
    storageBucket: 'chatapp-2b484.appspot.com',
    iosBundleId: 'com.example.chat',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAWju82T1-Vc4RLEjZm_HyrQn4_GBB3dAE',
    appId: '1:547915067197:ios:d1cd956ac370c590c3df54',
    messagingSenderId: '547915067197',
    projectId: 'chatapp-2b484',
    storageBucket: 'chatapp-2b484.appspot.com',
    iosBundleId: 'com.example.chat.RunnerTests',
  );
}
