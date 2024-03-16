
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_bloc/bloc/counter_bloc.dart';

import '../widget/bottons_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Page"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Text("Counter Value: ",style: TextStyle(fontSize: 18),),
          SizedBox(height: 10,),
          BlocBuilder<CounterBloc, CounterState>(
            builder: (context, state){
              if(state is CounterInitial){
                return Text("0",style: TextStyle(fontSize: 30, color: Colors.grey),);
              } else if(state is CounterValueChangedState){
                return Text(
                  state.counter.toString()
                ,style: TextStyle(fontSize: 30, color: Colors.grey),);
              }else{
                return Center();
              }
            }),
          Text("0",style: TextStyle(fontSize: 30, color: Colors.grey),),

        ]),
      ),
      floatingActionButton: ButtonsWidget(),
    );
  }
}