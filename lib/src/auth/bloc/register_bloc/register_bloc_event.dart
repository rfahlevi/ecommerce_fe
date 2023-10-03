part of 'register_bloc_bloc.dart';

@freezed
class RegisterBlocEvent with _$RegisterBlocEvent {
  const factory RegisterBlocEvent.started() = _Started;
}