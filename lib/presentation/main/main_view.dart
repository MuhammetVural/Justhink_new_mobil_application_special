import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
@RoutePage()
class MainView extends StatefulWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
