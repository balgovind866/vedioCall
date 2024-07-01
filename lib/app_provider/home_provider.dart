import 'dart:math';

import 'package:flutter/cupertino.dart';

class HomeScreenProvider extends ChangeNotifier {

  /// Controller
  TextEditingController enterNameController = TextEditingController();

  /// GlobleKey
  final formKey = GlobalKey<FormState>();

}