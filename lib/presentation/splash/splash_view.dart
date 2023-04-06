import 'dart:async';

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:justhink_new_mobil_application_purple/app/app.dart';
import 'package:justhink_new_mobil_application_purple/core/navigator/app_router.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/assets_manager.dart';
import 'package:justhink_new_mobil_application_purple/presentation/resources/color_manager.dart';

@routePage
class SplashView extends StatefulWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  Timer? _timer;

  _startDelay() {
    _timer = Timer(Duration(seconds: 2), _goNext);
  }

  _goNext() {
    router.push(const OnboardingRoute());
  }

  @override
  void initState() {
    _startDelay();
    super.initState();
  }

  @override
  void dispose() {
    _timer!.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.primary,
      body: const Center(
          child: Image(
        image: AssetImage(ImageAssets.justhinkLogo),
      )),
    );
  }
}
