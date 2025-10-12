// import 'package:coffee_shop_app/component/mysizedbox.dart';
// import 'package:coffee_shop_app/component/mytext.dart';
// import 'package:coffee_shop_app/utlls/colors.dart';
// import 'package:flutter/material.dart';
//
// class homepage extends StatefulWidget {
//   const homepage({super.key});
//
//   @override
//   State<homepage> createState() => _homepageState();
// }
//
// class _homepageState extends State<homepage> {
//   List<String> category = [
//     'All Coffee',
//     'Machiato',
//     'Latte',
//     'Americano',
//     'best',
//   ];
//   List<Map<String, dynamic>> mycoffiedata = [
//     {
//       'image': 'images/Image.png',
//       'name': 'Caffe Mocha',
//       'description': 'Deep Foam',
//       'price': 4.53,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Flat White',
//       'description': 'Espresso',
//       'price': 3.53,
//     },
//     {
//       'image': 'images/4.png',
//       'name': 'Cappuccino',
//       'description': 'Rich and Creamy',
//       'price': 4.20,
//     },
//     {
//       'image': 'images/Image1.png',
//       'name': 'Latte',
//       'description': 'Smooth Milk Blend',
//       'price': 3.75,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Americano',
//       'description': 'Classic and Bold',
//       'price': 2.99,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Espresso',
//       'description': 'Pure and Strong',
//       'price': 2.49,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Macchiato',
//       'description': 'Espresso with Milk Foam',
//       'price': 3.25,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Cold Brew',
//       'description': 'Iced and Refreshing',
//       'price': 4.75,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Affogato',
//       'description': 'Espresso with Ice Cream',
//       'price': 5.50,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Mocha Latte',
//       'description': 'Chocolate Flavored Coffee',
//       'price': 4.99,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Caramel Latte',
//       'description': 'Sweet and Creamy',
//       'price': 4.85,
//     },
//     {
//       'image': 'images/3.png',
//       'name': 'Iced Latte',
//       'description': 'Cold Milk and Espresso',
//       'price': 4.40,
//     },
//   ];
//
//   var isselected = 0;
//   var bottomnav = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(
//         selectedItemColor: AppColors.browncolor,
//         unselectedItemColor: AppColors.graycolor,
//
//         showSelectedLabels: false,
//
//         onTap: (value) {
//           bottomnav = value;
//           setState(() {});
//           print(bottomnav);
//         },
//         currentIndex: bottomnav,
//         items: [
//           BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'home'),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.favorite_border),
//             label: 'heart',
//           ),
//           BottomNavigationBarItem(
//             icon: Icon(Icons.shopping_bag_outlined),
//             label: 'shopping',
//           ),
//           BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: 'alarm'),
//         ],
//       ),
//       body: Column(
//         children: [
//           Container(
//             height: 300,
//             width: double.infinity,
//             child: Stack(
//               children: [
//                 Container(
//                   height: 250,
//                   width: double.infinity,
//                   decoration: BoxDecoration(
//                     gradient: LinearGradient(
//                       colors: [Color(0xff111111), Color(0xff313131)],
//                       begin: AlignmentGeometry.topRight,
//                       end: AlignmentGeometry.bottomLeft,
//                     ),
//                   ),
//                   child: Padding(
//                     padding: const EdgeInsets.only(
//                       bottom: 20,
//                       left: 5,
//                       right: 5,
//                     ),
//                     child: Column(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         mytext(data: 'Location', color: AppColors.whitecolor),
//                         mysizedbox(height: 3),
//                         mytext(
//                           data: 'Bilzen, Tanjungbalai',
//                           color: AppColors.whitecolor,
//                         ),
//                         mysizedbox(height: 3),
//
//                         Row(
//                           children: [
//                             Expanded(
//                               child: TextFormField(
//                                 decoration: InputDecoration(
//                                   border: OutlineInputBorder(),
//                                   prefixIcon: Icon(
//                                     Icons.search,
//                                     color: AppColors.whitecolor,
//                                   ),
//                                   hint: mytext(
//                                     data: 'Search coffee',
//                                     color: AppColors.whitecolor,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                             mysizedbox(width: 5),
//
//                             Container(
//                               height: 50,
//                               width: 50,
//                               decoration: BoxDecoration(
//                                 color: AppColors.browncolor,
//                                 borderRadius: BorderRadius.circular(10),
//                               ),
//                               child: Icon(
//                                 Icons.filter_list,
//                                 color: AppColors.whitecolor,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   top: 180,
//                   left: 30,
//                   right: 30,
//                   child: Container(
//                     height: 120,
//                     width: 300,
//                     decoration: BoxDecoration(
//                       borderRadius: BorderRadius.circular(10),
//                       image: DecorationImage(
//                         image: AssetImage('images/Banner 1.png'),
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                     child: Padding(
//                       padding: const EdgeInsets.only(left: 5, top: 5),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Container(
//                             height: 20,
//                             width: 50,
//                             decoration: BoxDecoration(
//                               borderRadius: BorderRadius.circular(5),
//                               color: AppColors.redcolor,
//                             ),
//                             child: mytext(
//                               data: 'Promo',
//                               textAlign: TextAlign.center,
//                               color: AppColors.whitecolor,
//                             ),
//                           ),
//                           mytext(
//                             data: 'Buy one get \n one FREE',
//                             fontSize: 32,
//                             color: AppColors.whitecolor,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//           SizedBox(
//             height: 50,
//             width: double.infinity,
//             child: ListView.builder(
//               scrollDirection: Axis.horizontal,
//               itemCount: category.length,
//               itemBuilder: (context, index) {
//                 return GestureDetector(
//                   onTap: () {
//                     isselected = index;
//                     setState(() {});
//                     print(isselected);
//                   },
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(10),
//
//                         color: isselected == index
//                             ? AppColors.browncolor
//                             : AppColors.whitecolor,
//                       ),
//                       child: Center(
//                         child: Padding(
//                           padding: const EdgeInsets.all(8.0),
//                           child: mytext(
//                             data: category[index].toString(),
//                             color: isselected == index
//                                 ? AppColors.whitecolor
//                                 : AppColors.blackcolor,
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 );
//               },
//             ),
//           ),
//           Expanded(
//             child: GridView.builder(
//               gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                 crossAxisCount: 2,
//               ),
//               itemCount: mycoffiedata.length,
//               itemBuilder: (context, index) {
//                 return Container(
//                   child: Column(
//                     children: [
//                       Image.asset(mycoffiedata[index]['image'], height: 120),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Align(
//                           alignment: AlignmentGeometry.topLeft,
//                           child: mytext(
//                             data: mycoffiedata[index]['name'],
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20),
//                         child: Align(
//                           alignment: AlignmentGeometry.topLeft,
//                           child: mytext(
//                             data: mycoffiedata[index]['description'],
//                             fontSize: 10,
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: const EdgeInsets.only(left: 20, right: 20),
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                           children: [
//                             mytext(
//                               data:
//                                   '\$ ' +
//                                   mycoffiedata[index]['price'].toString(),
//                             ),
//                             Container(
//                               height: 20,
//                               width: 20,
//                               decoration: BoxDecoration(
//                                 borderRadius: BorderRadius.circular(5),
//                                 color: AppColors.browncolor,
//                               ),
//                               child: Center(
//                                 child: Icon(
//                                   Icons.add,
//                                   color: AppColors.whitecolor,
//                                   size: 20,
//                                 ),
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 );
//               },
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:coffee_shop_app/component/mysizedbox.dart';
import 'package:coffee_shop_app/component/mytext.dart';
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
    'Machiato',
    'Latte',
    'Americano',
    'Best',
  ];

  List<Map<String, dynamic>> mycoffiedata = [
    {
      'image': 'images/Image.png',
      'name': 'Caffe Mocha',
      'description': 'Deep Foam',
      'price': 4.53,
    },
    {
      'image': 'images/3.png',
      'name': 'Flat White',
      'description': 'Espresso',
      'price': 3.53,
    },
    {
      'image': 'images/4.png',
      'name': 'Cappuccino',
      'description': 'Rich and Creamy',
      'price': 4.20,
    },
    {
      'image': 'images/Image1.png',
      'name': 'Latte',
      'description': 'Smooth Milk Blend',
      'price': 3.75,
    },
    {
      'image': 'images/3.png',
      'name': 'Americano',
      'description': 'Classic and Bold',
      'price': 2.99,
    },
    {
      'image': 'images/3.png',
      'name': 'Espresso',
      'description': 'Pure and Strong',
      'price': 2.49,
    },
    {
      'image': 'images/3.png',
      'name': 'Macchiato',
      'description': 'Espresso with Milk Foam',
      'price': 3.25,
    },
    {
      'image': 'images/3.png',
      'name': 'Cold Brew',
      'description': 'Iced and Refreshing',
      'price': 4.75,
    },
    {
      'image': 'images/3.png',
      'name': 'Affogato',
      'description': 'Espresso with Ice Cream',
      'price': 5.50,
    },
    {
      'image': 'images/3.png',
      'name': 'Mocha Latte',
      'description': 'Chocolate Flavored Coffee',
      'price': 4.99,
    },
    {
      'image': 'images/3.png',
      'name': 'Caramel Latte',
      'description': 'Sweet and Creamy',
      'price': 4.85,
    },
    {
      'image': 'images/3.png',
      'name': 'Iced Latte',
      'description': 'Cold Milk and Espresso',
      'price': 4.40,
    },
  ];

  var isselected = 0;
  var bottomnav = 0;

  @override
  Widget build(BuildContext context) {
    bool isLandscape = MediaQuery.of(context).orientation == Orientation.landscape;

    print('media quary reesult is this bro  ${MediaQuery.of(context).orientation}');
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
            // ✅ Category Filter Bar
            SizedBox(
              height: 50,
              width: double.infinity,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: category.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      isselected = index;
                      setState(() {});
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
              itemCount: mycoffiedata.length,
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
                          mycoffiedata[index]['image'],
                          height: 120,
                          width: double.infinity,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
                        child: mytext(
                          data: mycoffiedata[index]['name'],
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: mytext(
                          data: mycoffiedata[index]['description'],
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
                              data: '\$${mycoffiedata[index]['price'].toString()}',
                              fontWeight: FontWeight.bold,
                            ),
                            Container(
                              height: 25,
                              width: 25,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: AppColors.browncolor,
                              ),
                              child: Icon(Icons.add, color: AppColors.whitecolor, size: 16),
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
