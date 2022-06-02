import 'package:bloc_provider_test/counter/counter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AnotherPage extends StatelessWidget {
  const AnotherPage({super.key, required this.cubit});

  final CounterCubit cubit;

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: cubit,
      child: const AnotherView(),
    );
  }
}

class AnotherView extends StatelessWidget {
  const AnotherView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const CounterText(),
    );
  }
}
