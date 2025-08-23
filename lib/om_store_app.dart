import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:omstore/core/locale/app_locale.dart' show AppLocalizations;
import 'package:omstore/core/locale/l10n.dart';
import 'package:omstore/core/locale/locale_cubit.dart';
import 'package:omstore/core/routing/app_routes.dart';
import 'package:omstore/core/service/service_locator.dart';

class OmStoreApp extends StatelessWidget {

  const OmStoreApp({super.key,});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        child: BlocProvider(
          create: (_) => sl<LocaleCubit>(),
          child: BlocBuilder<LocaleCubit, Locale>(
            builder: (_, locale) {
              return MaterialApp(
                debugShowCheckedModeBanner: false,
                // theme: AppTheme.lightTheme,
                supportedLocales: L10n.all,

                locale: locale,
                localizationsDelegates: [
                  GlobalMaterialLocalizations.delegate,
                  GlobalCupertinoLocalizations.delegate,
                  GlobalWidgetsLocalizations.delegate,
                  AppLocalizations.delegate,
                ],
                onGenerateRoute: AppRoutes.onGenerateRoutes,
                initialRoute: AppRoutes.login,
              );
            },
          ),
        ) );
  }
}
