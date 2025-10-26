import 'package:coffee_shop_app/component/mytext.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class cart extends StatefulWidget {
  const cart({super.key});

  @override
  State<cart> createState() => _cartState();
}

class _cartState extends State<cart> {
  @override

  Future<List<List<String>>> getdata() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    List<String> cart = sp.getStringList('cart') ?? [];

    // Split each saved item into a list of [image, title, desc, price]
    List<List<String>> items =
    cart.map((item) => item.split('|')).toList();

    return items;
  }

  Future removedata(index)async{
    SharedPreferences sp = await SharedPreferences.getInstance();
    List<String> cart = sp.getStringList('cart') ?? [];
     cart.removeAt(index);
    await sp.setStringList('cart', cart);
    setState(() {

    });

    showDialog(context: context, builder: (context){
      return AlertDialog(
        title: const Icon(Icons.check_circle, color: Colors.green, size: 40),
        content: mytext(
          data: 'Item deleted successfully!',
          fontSize: 16,
          textAlign: TextAlign.center,
          fontWeight: FontWeight.bold,

        ),
        actions: [
          TextButton(onPressed: (){
            Navigator.pop(context);
          }, child: mytext(data: 'ok'))
        ],
      );
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle:  true,
        title: mytext(data: 'Add to cart'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            FutureBuilder(
              future: getdata(),
              builder: (context, AsyncSnapshot snapshot) {
                if (!snapshot.hasData) return CircularProgressIndicator();

                final items = snapshot.data;
                return Expanded(
                  child: ListView.builder(
                    itemCount: items.length,
                    itemBuilder: (context, index) {
                      final item = items[index];
                      return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Slidable(
                          endActionPane: ActionPane(
                            motion: const ScrollMotion(),
                            children: [
                              SlidableAction(
                                onPressed: (value){
                                  removedata(index);
                                },
                                backgroundColor: const Color(0xFFFE4A49),
                                foregroundColor: Colors.white,
                                icon: Icons.delete,
                                label: 'Delete',
                              ),

                            ],
                          ),
                          child: ListTile(

                            leading: Image.asset(item[0]),
                            title: mytext(data: item[1]),
                            subtitle: mytext(data: item[2]),
                            trailing: mytext(data: item[3]),
                          ),
                        ),
                      );
                    },
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
