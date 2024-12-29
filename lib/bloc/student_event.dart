part of 'student_bloc.dart';

sealed class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class AddStudentEvent extends StudentEvent {
  final String name;
  final int age;
  final String address;

  const AddStudentEvent(this.name, this.age, this.address);
}
