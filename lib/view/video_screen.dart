// import 'dart:math';
// import 'package:flutter/material.dart';
// import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';
// import '../const/app_local_tring.dart';
// import '../services/notification_handling.dart';
//
// class VideoCallScreen extends StatefulWidget {
//   final String userName;
//   const VideoCallScreen({super.key,required this.userName});
//
//   @override
//   State<VideoCallScreen> createState() => _VideoCallScreenState();
// }
//
// class _VideoCallScreenState extends State<VideoCallScreen> with WidgetsBindingObserver  {
//
//   Random random = Random();
//   bool isInBackground = false; // Track app background state
//
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addObserver(this); // Register observer
//   }
//
//   @override
//   void dispose() {
//     WidgetsBinding.instance.removeObserver(this); // Remove observer
//     super.dispose();
//   }
//
//   @override
//   void didChangeAppLifecycleState(AppLifecycleState state) {
//     switch (state) {
//       case AppLifecycleState.resumed:
//         print("app in resumed");
//         break;
//       case AppLifecycleState.inactive:
//         print("app in inactive");
//         break;
//       case AppLifecycleState.paused:
//         showCallCutNotification(callType: "Video",title: "Video Call");
//         break;
//       case AppLifecycleState.detached:
//         print("app in detached");
//         break;
//       case AppLifecycleState.hidden:
//         // TODO: Handle this case.
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: SafeArea(
//           child: ZegoUIKitPrebuiltCall(
//           appID: AppString.appID,
//           appSign: AppString.appSign,
//           callID: AppString.callID,
//           userID: "${100 + random.nextInt(900)}",
//           userName: widget.userName,
//           config: ZegoUIKitPrebuiltCallConfig.oneOnOneVideoCall(),
//           events: ZegoUIKitPrebuiltCallEvents(
//             user: ZegoCallUserEvents(
//                 onEnter: (value) {
//                   // CallNotification.showCallNotification(
//                   //   'Incoming Call',
//                   //   value.name ?? "",
//                   // );
//                 },
//             )
//           ),
//       )),
//     );
//   }
// }
