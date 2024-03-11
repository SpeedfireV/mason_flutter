import 'package:flutter/material.dart';
{{#riverpod}}
import 'package:flutter_riverpod/flutter_riverpod.dart';
{{/riverpod}}
{{#firebase}}
import 'package:firebase_core/firebase_core.dart';
{{/firebase}}
{{#hive}}
import 'package:hive_flutter/hive_flutter.dart';
{{/hive}}
{{#go router}}
import 'package:{{appTitle}}/services/router/router.dart';
{{/go router}}
{{#fonts}}
import 'variables/fonts.dart';
{{/fonts}}
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  {{#firebase}}
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  {{/firebase}}
  {{#hive}}
  await Hive.initFlutter();
  {{/hive}}
  {{#riverpod}}
  runApp(const ProviderScope(child: MainApp()));
  {{/riverpod}}
  {{^riverpod}}
  runApp(child: MainApp());
  {{/riverpod}}
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    //TODO: COLOR SCHEME!
    return SafeArea(
      {{#go router}}
      child: MaterialApp.router(
      {{/go router}}
      {{^go router}}
      child: MaterialApp(
      {{/go router}}
        {{#go router}}
        routerConfig: router,
        {{/go router}}
        {{^go router}}
        home: Scaffold(
          body: //TODO: CONTENT
        )
        {{/go router}}
          

debugShowCheckedModeBanner: false,
        theme: ThemeData(
            //TODO: fontFamily: AppFonts.FONT_NAME,

          ),
      ),
    );
  }
}
