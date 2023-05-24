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
    apiKey: 'AIzaSyCEuqdEnW2Ya6uQ7TMea18djs9tCoqLC-o',
    appId: '1:763476659507:web:e9e1c3ad587390e336c246',
    messagingSenderId: '763476659507',
    projectId: 'cdms-8fea0',
    authDomain: 'cdms-8fea0.firebaseapp.com',
    databaseURL: 'https://cdms-8fea0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'cdms-8fea0.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDVvaqv0_ujOOOpyRX3KQiV3k4vyK1S30E',
    appId: '1:763476659507:android:790fed35a3c822a636c246',
    messagingSenderId: '763476659507',
    projectId: 'cdms-8fea0',
    databaseURL: 'https://cdms-8fea0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'cdms-8fea0.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDCQfOx5SnNiJ00QuwNIoi3cd9vIniQGq0',
    appId: '1:763476659507:ios:11c67a884543aa5336c246',
    messagingSenderId: '763476659507',
    projectId: 'cdms-8fea0',
    databaseURL: 'https://cdms-8fea0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'cdms-8fea0.appspot.com',
    iosClientId: '763476659507-tjjbnt2tff5c4vbjpbu6c6g86o729fdq.apps.googleusercontent.com',
    iosBundleId: 'com.example.mapped',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDCQfOx5SnNiJ00QuwNIoi3cd9vIniQGq0',
    appId: '1:763476659507:ios:11c67a884543aa5336c246',
    messagingSenderId: '763476659507',
    projectId: 'cdms-8fea0',
    databaseURL: 'https://cdms-8fea0-default-rtdb.asia-southeast1.firebasedatabase.app',
    storageBucket: 'cdms-8fea0.appspot.com',
    iosClientId: '763476659507-tjjbnt2tff5c4vbjpbu6c6g86o729fdq.apps.googleusercontent.com',
    iosBundleId: 'com.example.mapped',
  );
}