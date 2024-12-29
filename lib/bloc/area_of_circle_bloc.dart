import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'dart:math';

part 'area_of_circle_event.dart';

class AreaOfCircleBloc extends Bloc<AreaOfCircleEvent, double> {
  AreaOfCircleBloc() : super(0.0) {
    on<CalculateAreaEvent>((event, emit) {
      // Calculate the area of the circle
      final area = pi * event.radius * event.radius;
      emit(area);
    });
  }
}
