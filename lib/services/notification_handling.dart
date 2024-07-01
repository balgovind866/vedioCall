
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

Future<void> showCallCutNotification({title, callType}) async {
  const AndroidNotificationDetails androidPlatformChannelSpecifics =
  AndroidNotificationDetails(
    'call_cut_channel_id',
    'Call Cut',
    // 'Notification channel for call cut actions',
    importance: Importance.max,
    priority: Priority.high,
    actions: [
      AndroidNotificationAction("end_call_action", "End",titleColor: Colors.red)
    ],
    showWhen: false,
  );
  const NotificationDetails platformChannelSpecifics =
  NotificationDetails(android: androidPlatformChannelSpecifics);

  await FlutterLocalNotificationsPlugin().show(
      0, // Notification ID
      '${callType}', // Notification title
      '${title}', // Notification body
      platformChannelSpecifics,
      payload: "end_call_action"
  );
}

void initializeNotifications() {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
  FlutterLocalNotificationsPlugin();

  // Initialize notification settings
  const AndroidInitializationSettings initializationSettingsAndroid =
  AndroidInitializationSettings('@mipmap/ic_launcher');
  final InitializationSettings initializationSettings =
  InitializationSettings(android: initializationSettingsAndroid);

  // Define callback for handling notification actions
  flutterLocalNotificationsPlugin.initialize(
    initializationSettings,
    onDidReceiveNotificationResponse: (details) => onSelectNotification,
  );
}

void onSelectNotification(String? payload) {
  if (payload != null) {
    print('Notification payload: $payload');
    // Handle notification payload as needed
  }
}