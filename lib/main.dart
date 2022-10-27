import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:zartec/application/home/home_bloc.dart';
import 'package:zartec/domain/core/di/injectable.dart';
import 'package:zartec/presentation/auth/auth_home.dart';
import 'package:zartec/presentation/home/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    User? user = FirebaseAuth.instance.currentUser;
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<HomeBloc>()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
            appBarTheme: AppBarTheme(
              color: Colors.white,
            ),
            textTheme: TextTheme(bodyText1: TextStyle(color: Colors.black))),
        home: const HomeScreen(),
        // home: (user == null) ? const AuthHome() : const HomeScreen(),
      ),
    );
  }
}
