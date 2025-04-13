import 'package:counter_app/counter/cubit/counter_cubit.dart';
import 'package:counter_app/counter/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(0),
      child: HomeCounter(),
    );
  }
}
