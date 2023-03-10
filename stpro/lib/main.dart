// import 'package:flutter/material.dart';

// import 'package:provider/provider.dart';
// import 'package:stpro/provider/auth_provider.dart';
// import 'package:stpro/provider/count_provider.dart';
// import 'package:stpro/provider/example_one.dart';
// import 'package:stpro/provider/example_two.dart';
// import 'package:stpro/screens/examples/example_one.dart';
// import 'package:stpro/screens/examples/favorite_example/favorite_screen.dart';
// import 'package:stpro/screens/examples/favorite_example/provider_favorite.dart';
// import 'package:stpro/screens/examples/value_notifier_listner.dart';
// import 'package:stpro/screens/loginScreen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MultiProvider(
//         providers: [
//           ChangeNotifierProvider(create: (_) => CountProvider()),
//           ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
//           // ChangeNotifierProvider(create: (_) => ExampleTwoProvider()),
//           ChangeNotifierProvider(create: (_) => AuthProvider()),
//           ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
//         ],
//         child: MaterialApp(
//             title: 'Flutter Demo',
//             theme: ThemeData(
//               primarySwatch: Colors.blue,
//             ),
//             home: LoginScreen()
//             // ExampleOneScreen()
//             //FavouriteScreen()
//             // ValueNotifierListener(),
//             ));
//   }
// }

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:stpro/provider/auth_provider.dart';
import 'package:stpro/provider/count_provider.dart';
import 'package:stpro/provider/example_one.dart';
import 'package:stpro/provider/example_two.dart';
import 'package:stpro/screens/examples/favorite_example/provider_favorite.dart';
import 'package:stpro/screens/examples/value_notifier_listner.dart';
import 'package:stpro/screens/loginScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => CountProvider()),
          ChangeNotifierProvider(create: (_) => ExampleOneProvider()),
          ChangeNotifierProvider(create: (_) => ExampleTwoProvider()),
          ChangeNotifierProvider(create: (_) => AuthProvider()),
          ChangeNotifierProvider(create: (_) => FavoriteItemProvider()),
        ],
        child: MaterialApp(
            title: 'Flutter Demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: LoginScreen()
//             // ExampleOneScreen()
//             //FavouriteScreen()
            //        ValueNotifierListener(),
            ));
  }
}
