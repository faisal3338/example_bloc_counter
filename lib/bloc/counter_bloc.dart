import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  int counter = 0;
  CounterBloc() : super(CounterInitial()) {
    on<CounterEvent>((event, emit) {// emit as setState, return state
      if(event is IncrementCounterEvent) {
        counter++;
        emit(CounterValueChangedState(counter: counter));
      }else if (event is DecrementCounterEvent) {
        counter--;
        emit(CounterValueChangedState(counter: counter));
      }else{
        counter=0;
        emit(CounterValueChangedState(counter: counter));
      }
    });
  }
}
