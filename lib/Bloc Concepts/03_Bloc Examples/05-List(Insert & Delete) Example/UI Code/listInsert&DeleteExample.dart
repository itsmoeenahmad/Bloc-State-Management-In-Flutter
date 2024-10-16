import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc Code/list_bloc.dart';
import '../Bloc Code/list_event.dart';
import '../Bloc Code/list_state.dart';

class list_InsertDelete_Example extends StatefulWidget {
  const list_InsertDelete_Example({super.key});

  @override
  State<list_InsertDelete_Example> createState() =>
      _list_InsertDelete_ExampleState();
}

class _list_InsertDelete_ExampleState extends State<list_InsertDelete_Example> {

  int itemNo = 0;

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
              Icons.arrow_back_ios_new_sharp,
              size: 20,
              color: Colors.white,
            )),
        title: const Text(
          'List(Insert & Delete) Example',
          style: TextStyle(
              fontSize: 20, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: BlocBuilder<ListBloc, ListState>(
        builder: (context, state) {
         if(state.ItemsList.isEmpty)
           {
             return const Center(child:  Text('No Items In a List',style: TextStyle(fontSize: 25,color: Colors.white),));
           }
         else if(state.ItemsList.isNotEmpty)
           {
             return ListView.builder(
                 itemCount: state.ItemsList.length,
                 itemBuilder: (BuildContext, index) {
                   return ListTile(
                     title: Text(
                       "Item No: ${state.ItemsList[index]}",
                       style: const TextStyle(color: Colors.white, fontSize: 30),
                     ),
                     trailing: InkWell(
                       onTap: (){
                         context.read<ListBloc>().add(RemoveFromListEvent(ItemInListIndex: state.ItemsList[index]));
                       },
                       child: const Icon(
                         Icons.delete,
                         color: Colors.white,
                         size: 30,
                       ),
                     ),
                   );
                 });
           }
         else
           {
             return const SizedBox();
           }
        },
      ),
      floatingActionButton: FloatingActionButton(
        shape: const CircleBorder(),
        backgroundColor: Colors.white,
        onPressed: () {
          ++itemNo;
          context.read<ListBloc>().add(AddInListEvent(ItemsInList: itemNo));
        },
        child: const Icon(
          Icons.add,
          color: Colors.black,
          size: 30,
        ),
      ),
    );
  }
}
