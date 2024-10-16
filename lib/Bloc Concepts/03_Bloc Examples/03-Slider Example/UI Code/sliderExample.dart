import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc Code/slider_bloc.dart';
import '../Bloc Code/slider_event.dart';
import '../Bloc Code/slider_state.dart';

class sliderExample extends StatefulWidget {
  const sliderExample({super.key});

  @override
  State<sliderExample> createState() => _sliderExampleState();
}

class _sliderExampleState extends State<sliderExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272727),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color(0xff272727),
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back_ios_new_sharp, size: 20, color: Colors.white,)),
        title: const Text(
          'Slider Example',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20),
        child: BlocBuilder<SliderBloc, SliderState>(
          builder: (context, state) {
            print('object');
            return Column(
              children: [
                const SizedBox(
                  height: 100,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  color: Colors.white.withOpacity(state.sliderValue),
                ),
                Slider(value: state.sliderValue, onChanged: (newValue) {
                  print(newValue);
                  context.read<SliderBloc>().add(MoveSlider(sliderValue: newValue));
                }),
              ],
            );
          },
        ),
      ),
    );
  }
}
