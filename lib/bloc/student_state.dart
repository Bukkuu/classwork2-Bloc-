import 'package:bloc_project/model/student_model.dart';
import 'package:equatable/equatable.dart';

class StudentState extends Equatable {
  final List<Student> lstStudents;
  final bool isLoading;

  const StudentState({
    required this.lstStudents,
    required this.isLoading,
  });

  factory StudentState.initial() {
    return StudentState(
      lstStudents: [],
      isLoading: false,
    );
  }

  StudentState copyWith({
    List<Student>? lstStudents,
    bool? isLoading,
  }) {
    return StudentState(
      lstStudents: lstStudents ?? this.lstStudents,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  @override
  List<Object> get props => [lstStudents, isLoading];
}
