// 2
part of 'counter_bloc.dart';

@immutable
sealed class CounterState {}

final class CounterInitial extends CounterState {}

class CounterValueChangedState extends CounterState {
  final int counter;// hold the new value of the counter
  CounterValueChangedState({
    required this.counter,
  });
}
