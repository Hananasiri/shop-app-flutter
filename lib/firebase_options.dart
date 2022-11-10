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
    apiKey: 'AIzaSyDyCIwSQUP9HIr4rVqrVjXbSf0xK5lPdNQ',
    appId: '1:305160405336:web:f663e9935bb523a8c8a52d',
    messagingSenderId: '305160405336',
    projectId: 'shop-getx-43102',
    authDomain: 'shop-getx-43102.firebaseapp.com',
    storageBucket: 'shop-getx-43102.appspot.com',
    measurementId: 'G-9LKFXNHX72',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCLm4brPEh2bCBei0nJ4HG3Up76Oc8bbdc',
    appId: '1:305160405336:android:1faf8e4484c81208c8a52d',
    messagingSenderId: '305160405336',
    projectId: 'shop-getx-43102',
    storageBucket: 'shop-getx-43102.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAmqurB3fGJRFXC8xiyTE9Ye_UFyo5PEDA',
    appId: '1:305160405336:ios:47af53e21c1467dcc8a52d',
    messagingSenderId: '305160405336',
    projectId: 'shop-getx-43102',
    storageBucket: 'shop-getx-43102.appspot.com',
    iosClientId: '305160405336-kfaoe0npa14i2pd97oli4robvfdbho24.apps.googleusercontent.com',
    iosBundleId: 'com.example.hananShop',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAmqurB3fGJRFXC8xiyTE9Ye_UFyo5PEDA',
    appId: '1:305160405336:ios:97232d44f83535d3c8a52d',
    messagingSenderId: '305160405336',
    projectId: 'shop-getx-43102',
    storageBucket: 'shop-getx-43102.appspot.com',
    iosClientId: '305160405336-p23972mrm44vfns4eq5evmsjd61qs2v2.apps.googleusercontent.com',
    iosBundleId: 'c',
  );
}
