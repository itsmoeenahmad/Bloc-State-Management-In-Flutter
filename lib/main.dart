import 'package:flutter/material.dart';
import 'Bloc Concepts/03_Bloc Examples/01-Counter App Example/Bloc Code/counterBloc.dart';
import 'Bloc Concepts/03_Bloc Examples/02-Switch Example/Bloc Code/switch_bloc.dart';
import 'Bloc Concepts/03_Bloc Examples/03-Slider Example/Bloc Code/slider_bloc.dart';
import 'Bloc Concepts/03_Bloc Examples/04-ImagePicker Example/Bloc Code/image_picker_bloc.dart';
import 'Bloc Concepts/03_Bloc Examples/05-List(Insert & Delete) Example/Bloc Code/list_bloc.dart';
import 'Bloc Concepts/03_Bloc Examples/06-Favourite Icon Example/Bloc Code/favourite_icon_bloc.dart';
import 'Bloc Concepts/mainScreen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => CounterBloc(),
        ),
        BlocProvider(
          create: (context) => SwitchBloc(),
        ),
        BlocProvider(
          create: (context) => SliderBloc(),
        ),
        BlocProvider(
          create: (context) => ImagePickerBloc(),
        ),
        BlocProvider(
          create: (context) => ListBloc(),
        ),
        BlocProvider(
          create: (context) => FavouriteBloc(),
        ),
      ],
      child: const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: mainScreen(),
      ),
    );
  }
}
