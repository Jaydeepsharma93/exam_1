import 'package:flutter/material.dart';

class Secscreen extends StatefulWidget {
  const Secscreen({super.key});

  @override
  State<Secscreen> createState() => _SecscreenState();
}

class _SecscreenState extends State<Secscreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar: AppBar(
          leading:IconButton(onPressed: (){
            Navigator.pop(context);
          }, icon: Icon(Icons.arrow_back_ios))
        ),
      ),
    );
  }
}
