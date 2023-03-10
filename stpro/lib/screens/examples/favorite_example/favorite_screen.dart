import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:stpro/screens/examples/favorite_example/provider_favorite.dart';
import 'package:stpro/screens/examples/favorite_example/provider_favorite.dart';
import 'package:stpro/screens/examples/favorite_example/provider_favorite.dart';

import 'provider_favorite.dart';

class FavouriteScreen extends StatefulWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  _FavouriteScreenState createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
//  final FavoriteProvider = P

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteItemProvider>(context);
    // final provider = Provider.of<ExampleTwoProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Example Two'),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: 1000,
                  itemBuilder: (context, index) {
                    return Card(
                      child: Consumer<FavoriteItemProvider>(
                          builder: (context, value, child) {
                        return ListTile(
                          onTap: () {
                            favoriteProvider.addItem(index);
                          },
                          title: Text("Items" + index.toString()),
                          //title: Text('item '+.selectedValue[index].toString(),),
                          trailing: Icon(
                              favoriteProvider.selectedItems.contains(index)
                                  ? Icons.favorite
                                  : Icons.favorite_outline),
                        );
                      }),
                    );
                  }))
        ],
      ),
    );
  }
}

class ExampleTwoProvider {}
