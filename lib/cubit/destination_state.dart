part of 'destination_cubit.dart';

abstract class DestinationState extends Equatable {
  const DestinationState();

  @override
  List<Object> get props => [];
}

class DestinationInitial extends DestinationState {}

class DestinationLoading extends DestinationState {}

class DestinationSuccess extends DestinationState {
  final List<DestinationModel> destinations;

  DestinationSuccess(this.destinations);

  @override
  List<Object> get props => [destinations];
}

class DestinatioFailed extends DestinationState {
  final String error;

  DestinatioFailed(this.error);

  @override
  List<Object> get props => [error];
}
