import 'package:flutter/material.dart';

import 'core/constants/my_strings.dart';
import 'core/themes/app_themes.dart';
import 'presentation/routes/router_imports.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(JournoApp());
}

class JournoApp extends StatelessWidget {
  JournoApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 844),
        minTextAdapt: true,
        splitScreenMode: true,
        useInheritedMediaQuery: true,
        builder: (context, child) {
          return MaterialApp.router(
            title: MyStrings.appName,
            debugShowCheckedModeBanner: false,
            theme: AppThemes.light,
            darkTheme: AppThemes.dark,
            routerConfig: _appRouter.config(),
          );
        });
  }
}
