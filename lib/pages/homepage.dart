import 'package:coffee_shop_app/component/mysizedbox.dart';
import 'package:coffee_shop_app/component/mytext.dart';
import 'package:coffee_shop_app/pages/detail_item.dart';
import 'package:coffee_shop_app/utlls/colors.dart';
import 'package:flutter/material.dart';

class homepage extends StatefulWidget {
  const homepage({super.key});

  @override
  State<homepage> createState() => _homepageState();
}

class _homepageState extends State<homepage> {
  List<String> category = [
    'All Coffee',
    'Cappuccino',
    'Latte',
    'Espresso',
    'Machiato',
    'Flat White',
    'Americano',
  ];

  List<Map<String, dynamic>> mycoffiedata = [
    {
      'image': 'images/Image.png',
      'name': 'Caffe Mocha',
      'description': 'Deep Foam',
      'price': 4.53,
      'category': 'Latte',
    },
    {
      'image': 'images/3.png',
      'name': 'Macchiato',
      'description': 'Espresso with Milk Foam',
      'price': 3.25,
      'category': 'Machiato',
    },
    {
      'image': 'images/4.png',
      'name': 'Cappuccino',
      'description': 'With Steamed Milk',
      'price': 4.10,
      'category': 'Cappuccino',
    },
    {
      'image': 'images/1Image.png',
      'name': 'Espresso',
      'description': 'Strong & Bold',
      'price': 2.80,
      'category': 'Espresso',
    },
    {
      'image': 'images/3.png',
      'name': 'Flat White',
      'description': 'Smooth Texture',
      'price': 4.25,
      'category': 'Flat White',
    },
    {
      'image': 'images/3.png',
      'name': 'Americano',
      'description': 'Classic Black Coffee',
      'price': 3.00,
      'category': 'Americano',
    },
    {
      'image': 'images/3.png',
      'name': 'Iced Latte',
      'description': 'Chilled & Refreshing',
      'price': 4.75,
      'category': 'Latte',
    },
    {
      'image': 'images/3.png',
      'name': 'Cappuccino Deluxe',
      'description': 'Rich Creamy Flavor',
      'price': 4.60,
      'category': 'Cappuccino',
    },
    {
      'image': 'images/3.png',
      'name': 'Mocha Espresso',
      'description': 'Chocolate Blend',
      'price': 4.90,
      'category': 'Espresso',
    },
    {
      'image': 'images/3.png',
      'name': 'Caramel Macchiato',
      'description': 'Sweet & Smooth',
      'price': 4.40,
      'category': 'Machiato',
    },
  ];


  List<Map<String , dynamic>> filteredCoffee = [];

  var isselected = 0;
  var bottomnav = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    filteredCoffee = List.from(mycoffiedata);
  }


  TextEditingController searchController = TextEditingController();


  Widget build(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: AppColors.browncolor,
        unselectedItemColor: AppColors.graycolor,
        showSelectedLabels: false,
        onTap: (value) {
          bottomnav = value;
          setState(() {});
        },
        currentIndex: bottomnav,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: 'heart'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: 'shopping'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'alarm'),
        ],
      ),

      // ✅ Scrollable Layout
      body: SingleChildScrollView(
        child: Column(
          children: [
            // ✅ Top Banner Section
            Container(
              height: 300,
              width: double.infinity,
              child: Stack(
                children: [
                  Container(
                    height: 250,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [Color(0xff111111), Color(0xff313131)],
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 20, left: 5, right: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          mytext(data: 'Location', color: AppColors.whitecolor),
                          mysizedbox(height: 3),
                          mytext(data: 'Bilzen, Tanjungbalai', color: AppColors.whitecolor),
                          mysizedbox(height: 3),

                          Row(
                            children: [
                              Expanded(
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    border: const OutlineInputBorder(),
                                    prefixIcon: Icon(Icons.search, color: AppColors.whitecolor),
                                    hintText: 'Search coffee',
                                    hintStyle: TextStyle(color: AppColors.whitecolor),
                                  ),
                                  controller: searchController,
                                  style: TextStyle(color: AppColors.whitecolor),
                                  onChanged: (value) {
                                    setState(() {
                                      if (value.isEmpty) {
                                        // Show all if search is empty
                                        filteredCoffee = List.from(mycoffiedata);
                                      } else {
                                        // Filter list by name or description
                                        filteredCoffee = mycoffiedata
                                            .where((item) =>
                                        item['name'].toString().toLowerCase().contains(value.toLowerCase()) ||
                                            item['description'].toString().toLowerCase().contains(value.toLowerCase()))
                                            .toList();
                                      }
                                    });
                                  },
                                ),
                              ),
                              mysizedbox(width: 5),
                              Container(
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  color: AppColors.browncolor,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Icon(Icons.filter_list, color: AppColors.whitecolor),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ✅ Promo Banner Positioned
                  Positioned(
                    top: 180,
                    left: 30,
                    right: 30,
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: const DecorationImage(
                          image: AssetImage('images/Banner 1.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: 20,
                              width: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.redcolor,
                              ),
                              child: Center(
                                child: mytext(data: 'Promo', color: AppColors.whitecolor),
                              ),
                            ),
                            mytext(
                              data: 'Buy one get \n one FREE',
                              fontSize: 26,
                              color: AppColors.whitecolor,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            mysizedbox(height: 5,),
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        isselected = index;
                        if (category[index] == 'All Coffee') {
                          filteredCoffee = List.from(mycoffiedata);
                        } else {
                          filteredCoffee = mycoffiedata
                              .where((item) => item['category'] == category[index])
                              .toList();
                        }
                      });
                    },

                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: isselected == index
                              ? AppColors.browncolor
                              : AppColors.whitecolor,
                        ),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            child: mytext(
                              data: category[index],
                              color: isselected == index
                                  ? AppColors.whitecolor
                                  : AppColors.blackcolor,
                            ),
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),

            // ✅ Coffee Grid Section (ShrinkWrap + Non-scrollable)
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: isLandscape ? 3 : 2,
                childAspectRatio: 0.75,
              ),
              itemCount: filteredCoffee.length,
              itemBuilder: (context, index) {
                return Container(
                  margin: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: AppColors.whitecolor,
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.shade200,
                        spreadRadius: 2,
                        blurRadius: 5,
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
                        child: Image.asset(
                          filteredCoffee[index]['image'],
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: mytext(
                          data: filteredCoffee[index]['name'],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: mytext(
                          data: filteredCoffee[index]['description'],
                          fontSize: 10,
                          color: AppColors.graycolor,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            mytext(
                              data: '\$${filteredCoffee[index]['price'].toString()}',
                              fontWeight: FontWeight.bold,
                            ),
                            InkWell(
                              child: Container(
                                height: 25,
                                width: 25,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(5),
                                  color: AppColors.browncolor,
                                ),
                                child: Icon(Icons.add, color: AppColors.whitecolor, size: 16),
                              ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context) => detail_item(image: filteredCoffee[index]['image'], title: filteredCoffee[index]['name'], description: filteredCoffee[index]['description'], price: filteredCoffee[index]['price'].toString(),)));
                              },
                            ),
                          ],
                        ),
                      ),
                    ],
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
