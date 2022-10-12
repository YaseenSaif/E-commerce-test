import 'package:e_commerse_app/app/core/values/launguages_and_localization/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'app/core/theme/app_theme.dart';
import 'app/data/services/translation_service.dart';
import 'app/routes/app_pages.dart';

Future<void> initServices() async {
  /// base initializing
  WidgetsFlutterBinding.ensureInitialized();

  /// device orientations
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);

  /// services
  await Get.putAsync(() => TranslationService().init());
}

void main() async {
  await initServices();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 752),
      minTextAdapt: true,
      useInheritedMediaQuery: true,
      builder: (context, child) {
        return GetMaterialApp(
          title: AppStrings.appName,
          builder: (context, child) {
            return MediaQuery(
              data: MediaQuery.of(context).copyWith(
                // the size will be fixed regardless the font size of the OS
                textScaleFactor: 1.0,
              ),
              child: child!,
            );
          },
          initialRoute: AppPages.initial,
          getPages: AppPages.allRoutes,
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.cupertino,
/*          localizationsDelegates: const [
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: Get.find<TranslationService>().supportedLocales(),
          translationsKeys: Get.find<TranslationService>().translations,
          locale: Get.find<SettingsService>().getLocale(),
          fallbackLocale: Get.find<TranslationService>().fallbackLocale,
          themeMode: Get.find<SettingsService>().getThemeMode(),*/
          theme: AppTheme.getLightTheme(),
          darkTheme: AppTheme.getDarkTheme(),
        );
      },
    );
  }
}
