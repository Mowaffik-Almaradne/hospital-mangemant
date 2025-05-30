part of 'change_password_cubit.dart';

class ChangePasswordState extends Equatable {
  final DeafultBlocStatus status;
  final FailureMessage failureMessage;
  const ChangePasswordState({
    required this.failureMessage,
    required this.status,
  });

  factory ChangePasswordState.intial() {
    return ChangePasswordState(
      failureMessage: FailureMessage(message: '', statusCode: 0),
      status: DeafultBlocStatus.initial,
    );
  }
  @override
  List<Object?> get props => [failureMessage, status];

  ChangePasswordState copyWith({
    FailureMessage? failureMessage,
    DeafultBlocStatus? status,
  }) {
    return ChangePasswordState(
      failureMessage: failureMessage ?? this.failureMessage,
      status: status ?? this.status,
    );
  }
}
