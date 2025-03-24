import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  final String message;

  const Failure(this.message);
  @override
  List<Object?> get props => [message];
}

class NewtworkFailure extends Failure {
  const NewtworkFailure(super.message);
}

class LLMFailure extends Failure {
  const LLMFailure(super.message);
}
