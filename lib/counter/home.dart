import 'package:counter_app/counter/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCounter extends StatefulWidget {
  const HomeCounter({super.key});

  @override
  State<HomeCounter> createState() => _HomeCounterState();
}

class _HomeCounterState extends State<HomeCounter> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Counter App",
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                icon: Icon(Icons.remove),
                iconSize: 20,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                tooltip: 'Decrement',
                onPressed: () {
                  context.read<CounterCubit>().decrement();
                },
              ),
              SizedBox(
                width: 10,
              ),
              BlocBuilder<CounterCubit, int>(
                builder: (context, state) {
                  return Text(
                    state.toString(),
                    style: TextStyle(
                      fontSize: 60,
                      fontWeight: FontWeight.bold,
                    ),
                  );
                },
              ),
              SizedBox(
                width: 10,
              ),
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 20,
                style: IconButton.styleFrom(
                  backgroundColor: Colors.redAccent,
                  foregroundColor: Colors.white,
                ),
                onPressed: () {
                  context.read<CounterCubit>().increment();
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
