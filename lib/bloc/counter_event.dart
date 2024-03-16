//Note:
//atterbute will be as "final"
//add all feture here as class
// 1

part of 'counter_bloc.dart';

@immutable
sealed class CounterEvent {}

class IncrementCounterEvent extends CounterEvent {}

class DecrementCounterEvent extends CounterEvent {}

class ResetCounterEvent extends CounterEvent {}
