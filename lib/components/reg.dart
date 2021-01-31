import 'package:firebase_auth_platform_interface/firebase_auth_platform_interface.dart';
import 'package:healthcare/components/sign.dart';
import 'package:firebase_auth_web/firebase_auth_web.dart';

class FirebaseAuthWeb extends FirebaseAuthPlatform {
  static void registerWith(SignUp SignUp) {
    FirebaseAuthPlatform.instance = FirebaseAuthWeb();
  }
}
