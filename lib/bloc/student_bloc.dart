import 'package:bloc/bloc.dart';
import 'package:bloc_project/bloc/student_state.dart';
import 'package:bloc_project/model/student_model.dart';
import 'package:equatable/equatable.dart';

part 'student_event.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  

  StudentBloc() : super(StudentState.initial()) {
    on<AddStudentEvent>((event, emit) {
      // Create a new StudentModel from the event data
      final newStudent = Student(event.name, event.age, event.address);

      // Add the new student to the list of students in the state
      final updatedStudents = List<Student>.from(state.lstStudents)
        ..add(newStudent);

      // Emit the new state with the updated list of students
      emit(state.copyWith(lstStudents: updatedStudents));
    });


  }
}
