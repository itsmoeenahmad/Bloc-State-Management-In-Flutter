import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc Code/switch_bloc.dart';
import '../Bloc Code/switch_event.dart';
import '../Bloc Code/switch_state.dart';

class SwitchExample extends StatefulWidget {
  const SwitchExample({super.key});

  @override
  State<SwitchExample> createState() => _SwitchExampleState();
}

class _SwitchExampleState extends State<SwitchExample> {
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
          'Switch Example',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const SizedBox(
              height: 300,
            ),
            BlocBuilder<SwitchBloc, SwitchState>(
              builder: (context, state) {
                return Switch(
                  value: state.switchIs,
                  onChanged: (newValue) {
                    context.read<SwitchBloc>().add(EnableOrDisableSwitch());
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
