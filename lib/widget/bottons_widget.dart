import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/bloc/counter_bloc.dart';

class ButtonsWidget extends StatelessWidget {
  const ButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        FloatingActionButton(
          onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(IncrementCounterEvent());
          },
          child: const Icon(Icons.add),
        ),
        FloatingActionButton(
          onPressed: (){
            BlocProvider.of<CounterBloc>(context).add(ResetCounterEvent());
          },
          child: const Icon(Icons.exposure_zero),
        ),
        FloatingActionButton(
          onPressed: () {
            BlocProvider.of<CounterBloc>(context).add(DecrementCounterEvent());
          },
          child: const Icon(Icons.remove),
        ),
      ]
    );
  }
}