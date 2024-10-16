import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../Bloc Code/favourite_icon_bloc.dart';
import '../Bloc Code/favourite_icon_event.dart';
import '../Bloc Code/favourite_icon_state.dart';

class FavouriteIconExample extends StatefulWidget {
  const FavouriteIconExample({super.key});

  @override
  State<FavouriteIconExample> createState() => _FavouriteIconExampleState();
}

class _FavouriteIconExampleState extends State<FavouriteIconExample> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff272727),
      appBar: AppBar(
        scrolledUnderElevation: 0,
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
      body: BlocBuilder<FavouriteBloc, FavouriteIconState>(builder: (context, state){
        return ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index){
              final favouriteItemsList = state.itemsList[index] ?? false;
              return ListTile(
                textColor: Colors.white,
                title: Text(index.toString(),style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    fontSize: 20
                ),),
                trailing: InkWell(
                  onTap: (){
                    context.read<FavouriteBloc>().add(onClickFavouriteIcon(onClickIndexIs: index));
                  },
                  child: Icon( favouriteItemsList ? Icons.favorite : Icons.favorite_border ,color: favouriteItemsList ? Colors.red : Colors.white,),
                )
              );
            });
      })
    );
  }
}
