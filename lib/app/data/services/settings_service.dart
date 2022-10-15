import 'dart:ui';

import 'package:get/get.dart';

class SettingsService extends GetxService {
  getLocal() {
    ///code for getting local data from local storage
    return const Locale('en');
  }
}
