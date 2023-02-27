import 'dart:async';
import 'package:cv_app/bloc_observer.dart';
import 'package:cv_app/cubit/cubit.dart';
import 'package:cv_app/cubit/states.dart';
import 'package:cv_app/dio_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'user_screen.dart';

void main() {
  Bloc.observer = MyBlocObserver();
  DioHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (context) => AppCubit()..getDaata(),
        child: BlocConsumer<AppCubit, AppStates>(
          builder: (context, state) => MaterialApp(
            title: 'Splash Screen',
            theme: ThemeData(
              primarySwatch: Colors.green,
            ),
            home: const MyHomePage(),
            debugShowCheckedModeBanner: false,
          ),
          listener: (context, state) {},
        ));
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const SecondScreen(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: FlutterLogo(
        size: MediaQuery.of(context).size.height,
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AppCubit, AppStates>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('السيره الذاتيه'),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: SafeArea(
              child: SingleChildScrollView(
            child: ElevatedButton(
              onPressed: () {
                AppCubit.get(context).getDaata();
                _navigateToUserScreen(context);
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black87,
                backgroundColor: Colors.yellow,
                padding: const EdgeInsets.all(20.0),
                fixedSize: const Size(300, 80),
                elevation: 15,
                shadowColor: Colors.yellow,
                side: const BorderSide(color: Colors.black87, width: 2),
                shape: const StadiumBorder(),
              ),
              child: const Text("start"),
            ),
          )),
        ),
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          child: Container(
            height: 80.0,
          ),
        ),
      ),
      listener: (context, state) {},
    );
  }

  void _navigateToUserScreen(BuildContext context) {
    Navigator.of(context).push(
      MaterialPageRoute(
        builder: (context) => const UserScreen(),
      ),
    );
  }
}
