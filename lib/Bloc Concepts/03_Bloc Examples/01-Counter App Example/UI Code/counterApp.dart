import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc Code/counterBloc.dart';
import '../Bloc Code/counterEvent.dart';
import '../Bloc Code/counterState.dart';

class counterApp extends StatefulWidget {
  const counterApp({super.key});

  @override
  State<counterApp> createState() => _counterAppState();
}

class _counterAppState extends State<counterApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272727),
      appBar: AppBar(
        backgroundColor: const Color(0xff272727),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_sharp, size: 20, color: Colors.white,)),
        title: const Text(
          'Counter App',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            BlocBuilder<CounterBloc, CounterState>(
              builder: (context, state) {
                return Text(
                  state.counter.toString(),
                  style: const TextStyle(
                      fontSize: 250,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  InkWell(
                    onTap: () {
                      context.read<CounterBloc>().add(DecrementCounter());
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Icon(Icons.remove, size: 45,),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      context.read<CounterBloc>().add(IncrementCounter());
                    },
                    child: Container(
                      height: 60,
                      width: 60,
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle
                      ),
                      child: const Center(
                        child: Icon(Icons.add, size: 45,),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
