import 'package:mobile_final/data/usecases/auth/remote_login_with_email.dart';
import 'package:mobile_final/data/usecases/auth/remote_register_with_email.dart';
import 'package:mobile_final/main/factories/pages/login/login_screen_factory.dart';
import 'package:mobile_final/main/factories/pages/cats/cats_screen_factory.dart';
import 'package:mobile_final/presentation/login_presenter.dart';
import 'package:mobile_final/ui/login/login_screen.dart';
import 'package:mobile_final/ui/cats/cats_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: LoginScreen.id,
      getPages: [
        GetPage(name: LoginScreen.id, page: makeLoginScreen),
        GetPage(name: CatsScreen.id, page: makeCatsScreen),
      ],
    );
  }
}
