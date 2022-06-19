import 'package:mobile_final/main/factories/pages/login/login_presenter_factory.dart';
import 'package:mobile_final/ui/login/login_screen.dart';
import 'package:flutter/material.dart';

Widget makeLoginScreen() => LoginScreen(presenter: makeLoginPresenter());