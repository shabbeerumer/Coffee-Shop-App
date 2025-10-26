import 'package:coffee_shop_app/component/mytext.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
                      return ListTile(
                        leading: Image.asset(item[0]),
                        title: mytext(data: item[1]),
                        subtitle: mytext(data: item[2]),
                        trailing: mytext(data: item[3]),
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
