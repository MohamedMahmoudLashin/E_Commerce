import 'package:e_commerce/features/auth/presentation/ui_screens/forg_pass.dart';
import 'package:e_commerce/features/auth/presentation/ui_screens/login_screen.dart';
import 'package:e_commerce/features/auth/presentation/ui_screens/sign_up_screen.dart';
import 'package:e_commerce/splash_screen/splash_screen.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'features/welcome/presentation/welcome_info_screen/ui_screens/welcome_info_screens.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  runApp(
    EasyLocalization(
        supportedLocales: const[Locale('en'), Locale('ar')],
        path: 'assets/translations',
        fallbackLocale: const Locale('en'),
        child:const MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      title: 'E-Commerce',
      theme: ThemeData(
        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: "splash",
      routes: {
        "splash":(context)=>SplashScreen(),
        "infos":(context)=>WelcomeInfoScreens(),
        "login":(context)=>LoginScreen(),
        "signup":(context)=>SignUpScreen(),
        "forgpass":(context)=>ForgPass(),

      },
    );
  }
}


