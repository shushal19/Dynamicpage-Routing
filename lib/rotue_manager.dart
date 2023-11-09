import 'package:flutter/material.dart';

import 'main.dart';

class Routes{
  static const String initial ='/';
  static const String secondpage = '/second';
  static const String thirdpage = '/third';
}
class RouteGenerator{
  static MaterialPageRoute getRoutes(RouteSettings settings){
    switch(settings.name){
      case Routes.initial:
      return MaterialPageRoute(builder: (_)=>const HomePage());
      case Routes.secondpage:
      return MaterialPageRoute(builder: (_)=>const SecondPage());
      default:
      return MaterialPageRoute(builder: (_)=>const UnPage());

    }
  }
}
class UnPage extends StatelessWidget {
  const UnPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Text("undefined");
  }
}