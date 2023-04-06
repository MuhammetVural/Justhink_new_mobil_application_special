import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:justhink_new_mobil_application_purple/app/app.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  void updateAppState(){
    MyApp.instance.appState = 10;
  }
  void getAppState(){
    print (MyApp.instance.appState); 
  }

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}