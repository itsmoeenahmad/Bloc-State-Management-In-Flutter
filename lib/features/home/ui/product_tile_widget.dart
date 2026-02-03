import '../bloc/home_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutterbloc/features/home/model/product_data_model.dart';

class ProductTileWidget extends StatelessWidget {
  final ProductDataModel productDataModel;
  final HomeBloc homeBloc;
  const ProductTileWidget({super.key, required this.productDataModel, required this.homeBloc});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(10)
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 200,
            width: double.maxFinite,
            decoration: BoxDecoration(
              image: DecorationImage(image: NetworkImage(productDataModel.imageUrl), fit: BoxFit.contain)
            ),
          ),
          SizedBox(height: 10),
          Text(productDataModel.name, style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800, color: Colors.black)),
          Text(productDataModel.description, style: TextStyle(fontSize: 14, fontWeight: FontWeight.w400, color: Colors.black)),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("${productDataModel.price} \$", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black)),
              IconButton(
                onPressed: () {
                  homeBloc.add(HomeProductCartButtonClickedEvent(clickedProduct: productDataModel));
                },
                icon: Icon(Icons.shopping_cart_outlined),
                color: Colors.black,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
