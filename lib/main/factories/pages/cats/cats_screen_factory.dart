import 'package:mobile_final/main/factories/pages/cats/cats_presenter_factory.dart';
import 'package:mobile_final/presentation/cats_presenter.dart';
import 'package:mobile_final/ui/cats/cats_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

Widget makeCatsScreen() {
  final presenter = Get.put<CatsPresenter>(makeCatsPresenter());
  return CatsScreen(
    presenter: presenter,
  );
}
