import 'package:bloc_project/bloc/area_of_circle_bloc.dart';
import 'package:bloc_project/bloc/dashboard_bloc.dart';
import 'package:bloc_project/bloc/simple_interest_bloc.dart';
import 'package:bloc_project/bloc/student_bloc.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> InitDependencies() async {
  _initBloc();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => AreaOfCircleBloc());
  serviceLocator.registerLazySingleton(() => StudentBloc());
  serviceLocator.registerLazySingleton(() => SimpleInterestBloc());
  serviceLocator.registerLazySingleton<DashboardBloc>(() => DashboardBloc(
        serviceLocator(),
        serviceLocator(),
        serviceLocator(),
      ));
}



