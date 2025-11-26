import 'package:flutter/material.dart';
import 'package:flutter_application_chatapp/feature/ui/widgets/widgetsForHomeScreen/chatScreen.dart';
import 'package:flutter_application_chatapp/feature/ui/widgets/widgetsForHomeScreen/scaffoldscreenbottonappbar.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffoldscreenbottonappbar(
      title: "Chat App",
      icon1: Icons.settings,
      icon2: Icons.camera,
      body: Chatscreen(
        
      ),
    );
  }
}
