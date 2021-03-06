/*
 * @author: lencx
 * @create_at: Jun 26, 2020
 **/
import 'package:flutter/material.dart';
// import 'package:fluro/fluro.dart';

import 'package:explore/screen/time.dart';
import 'package:explore/screen/chat.dart';

class ExploreApp extends StatefulWidget {
  @override
  State createState() {
    return ExploreAppState();
  }
}

class ExploreAppState extends State<ExploreApp> {
  // ExploreAppState() {
  //   // final router = Router();
  //   // Routes.configureRoutes(router);
  //   // Application.router = router;
  // }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Explore',
        // initialRoute: '/chat',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.deepPurple,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        routes: {
          '/chat': (context) => ChatScreen(),
          '/time': (context) => TimeScreen(),
        },
      );
  }
}