import 'package:flutter/material.dart';
import '02_Need Of Equatable Pacakge/equatablePackage.dart';
import '03_Bloc Examples/01-Counter App Example/UI Code/counterApp.dart';
import '03_Bloc Examples/02-Switch Example/UI Code/switchExample.dart';
import '03_Bloc Examples/03-Slider Example/UI Code/sliderExample.dart';
import '03_Bloc Examples/04-ImagePicker Example/UI Code/ImagePickerExample.dart';
import '03_Bloc Examples/05-List(Insert & Delete) Example/UI Code/listInsert&DeleteExample.dart';
import '03_Bloc Examples/06-Favourite Icon Example/UI Code/FavouriteIconExample.dart';

class mainScreen extends StatelessWidget {
  const mainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272727),
      appBar: AppBar(
        backgroundColor: const Color(0xff272727),
        centerTitle: true,
        title: const Text(
          'Flutter Bloc',
          style: TextStyle(
              fontSize: 30, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              //Space.
              const SizedBox(
                height: 10,
              ),
              //Need of Equatable Package.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const equatablePackage()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'Need Of Equatable Package In Flutter Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              //Space.
              const SizedBox(
                height: 10,
              ),
              //Counter App Example.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const counterApp()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'Counter App With Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              //Space.
              const SizedBox(
                height: 10,
              ),
              //Switch Example.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const SwitchExample()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'Switch Example With Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              //Space.
              const SizedBox(
                height: 10,
              ),
              //Slider Example.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const sliderExample()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'Slider Example With Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              //Space.
              const SizedBox(
                height: 10,
              ),
              //ImagePicker Example.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const ImagePickerExample()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'Image Picker Example With Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              //Space.
              const SizedBox(
                height: 10,
              ),
              //List(Insert & Delete) Example.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const list_InsertDelete_Example()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'List(Insert & Delete) Example With Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
              //Space.
              const SizedBox(
                height: 10,
              ),
              //List(Insert & Delete) Example.
              InkWell(
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const FavouriteIconExample()));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                      border: Border.all(
                          width: 2,
                          color: Colors.white,
                          style: BorderStyle.solid)),
                  child: const Center(
                    child: Text(
                      'Favourite Icon With Bloc',
                      style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.w700),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
