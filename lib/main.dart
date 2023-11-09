import 'package:flutter/material.dart';
import 'package:practiseclass/rotue_manager.dart';

void main()
{
  runApp( MaterialApp(
    home: const HomePage(),
    theme: ThemeData(
      primarySwatch: Colors.red,
    ),
    onGenerateRoute: RouteGenerator.getRoutes,
    initialRoute: Routes.initial,
  ));
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("first page"),
      ),

      body: ElevatedButton(onPressed: (){
        Navigator.pushReplacementNamed(context, Routes.secondpage);
        
        

      }, child:const Center(child: Text("Go to the second page"))),
      
      
    );
  }
}
class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Second Page"),

      ),
      body: ElevatedButton(onPressed: (){
        Navigator.pushReplacementNamed(context, Routes.initial);

      }, child: const Center(child:  Text("go to the first page"))),
    );
  }
}
