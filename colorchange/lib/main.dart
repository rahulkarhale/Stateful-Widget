
import 'package:flutter/material.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

@override
  Widget build(BuildContext context){
    return const ContainerApp();
  }
}

class ContainerApp extends StatefulWidget{
  const ContainerApp({super.key});

  @override
  State createState()=>_ContainerAppState();
}

class _ContainerAppState extends State{
  bool changeColor=true;

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title:const Text("Container App",
          style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body:Center(
          child:Container(
            color:changeColor?Colors.red[900]:Colors.orange[900],
            width: 100,
            height: 100,
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if(changeColor==true){
              changeColor=false;
            } else {
              changeColor=true;
            }
            setState(() {});
          },
          backgroundColor: Colors.redAccent,
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}