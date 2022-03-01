import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends FullLifeCycleController with FullLifeCycleMixin {
  final _contador = 0.obs;
  int get contador => _contador.value;
  set contador(int tempo) => _contador(tempo);

  final _segundoPlano = 0.obs;
  int get segundoPlano => _segundoPlano.value;
  set segundoPlano(int plano) => _segundoPlano(plano);

  bool timerAtivo = true;

  @override
  void onDetached() {
    debugPrint('onDetached');
  }

  @override
  void onInactive() {
    debugPrint('onInactive');
  }

  @override
  void onPaused() {
    debugPrint('onPaused');
    timerAtivo = false;
    _segundoPlano.value++;
  }

  @override
  void onResumed() {
    debugPrint('onResumed');
    timerAtivo = true;
    Get.snackbar('Timer', ' O timer foi continuado');
    startTimer();
  }

  @override
  void onReady() {
    super.onReady();
    startTimer();
  }

  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) async {
      if (timerAtivo == false) {
        timer.cancel();
      }
      _contador.value++;
    });
  }
}
