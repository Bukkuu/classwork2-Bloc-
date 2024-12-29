import 'package:bloc_project/bloc/area_of_circle_bloc.dart';
import 'package:bloc_project/bloc/simple_interest_bloc.dart';
import 'package:bloc_project/bloc/student_bloc.dart';
import 'package:bloc_project/view/area_circle_view.dart';
import 'package:bloc_project/view/simple_interest_view.dart';
import 'package:bloc_project/view/student_bloc_view%20.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardBloc extends Cubit<void> {
  DashboardBloc(
      this._areaOfCircleBloc, this._studentBloc, this._simpleInterestBloc)
      : super(null);

  final AreaOfCircleBloc _areaOfCircleBloc;
  final StudentBloc _studentBloc;
  final SimpleInterestBloc _simpleInterestBloc;

  void openAreaofcircleBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _areaOfCircleBloc,
                  child: AreaCircleView(),
                )));
  }

  void openStudentBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _studentBloc,
                  child: StudentBlocView(),
                )));
  }

  void openSIBlocView(BuildContext context) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (_) => BlocProvider.value(
                  value: _simpleInterestBloc,
                  child: SimpleInterestView(),
                )));
  }
}
