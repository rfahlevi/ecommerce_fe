import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_bloc_event.dart';
part 'register_bloc_state.dart';
part 'register_bloc_bloc.freezed.dart';

class RegisterBlocBloc extends Bloc<RegisterBlocEvent, RegisterBlocState> {
  RegisterBlocBloc() : super(const _Initial()) {
    on<RegisterBlocEvent>((event, emit) {});
  }
}
