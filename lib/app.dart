import 'package:bloc_project/bloc/dashboard_bloc.dart';
import 'package:bloc_project/service_locator.dart';
import 'package:bloc_project/view/dashboard_bloc_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BLoC',
      home: BlocProvider.value(
        value: serviceLocator<DashboardBloc>(),
        child: DashboardBlocView(),
      ),
      theme: ThemeData(
          appBarTheme: AppBarTheme(backgroundColor: Colors.teal),
          cardTheme: CardTheme(
            color: Colors.amber,
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(Colors.amber),
            foregroundColor: WidgetStateProperty.all(Colors.white),
          ))),
    );
  }
}
