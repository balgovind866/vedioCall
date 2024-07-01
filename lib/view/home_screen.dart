import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:vediocallingapp/view/video_screen.dart';

import '../app_provider/home_provider.dart';
import 'audio_call_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  @override
  Widget build(BuildContext context) {
    final homeProvider = Provider.of<HomeScreenProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text("Video And Audio Call"),
      ),
      body: Form(
        key: homeProvider.formKey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
                margin: const EdgeInsets.all(20),
                child: TextFormField(
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter username';
                    }
                    return null;
                  },
                  controller: homeProvider.enterNameController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Username',
                  ),
                ),
            ),
            ElevatedButton(
                onPressed: () {
                  if (homeProvider.formKey.currentState!.validate()) {
                    // Navigator.push(
                    //     context,
                    //     MaterialPageRoute(
                    //       builder: (context) => VideoCallScreen(
                    //           userName: homeProvider.enterNameController.text),
                    //     ));
                  }
                },
                child: const Text("Video Call")),
            ElevatedButton(onPressed: () {
              if (homeProvider.formKey.currentState!.validate()) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => AudioCallScreen(
                          userName: homeProvider.enterNameController.text),
                    ));
              }
            }, child: const Text("Audio Call"))
          ],
        ),
      ),
    );
  }
}
