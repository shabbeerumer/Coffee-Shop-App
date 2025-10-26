import 'package:coffee_shop_app/pages/homepage.dart';
import 'package:coffee_shop_app/utlls/packege.dart';
import 'package:flutter/services.dart';

class firstpage extends StatefulWidget {
  const firstpage({super.key});

  @override
  State<firstpage> createState() => _firstpageState();
}

class _firstpageState extends State<firstpage> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent, // ✅ Transparent for full image
        statusBarIconBrightness: Brightness.light, // ✅ Light = white icons
        statusBarBrightness: Brightness.dark, // ✅ For iOS devices
      ),
    );


    return Scaffold(
      backgroundColor: AppColors.blackcolor,
      body: SafeArea(
        child: Column(
          children: [
            Expanded(child: Center(child: Image.asset('images/Image Onboarding.png'))),
           Container(
             child: Column(
               children: [
                 mytext(data: 'Fall in Love with \n Coffee in Blissful \n Delight!', textAlign: TextAlign.center, color: AppColors.whitecolor, fontWeight: FontWeight.bold, fontSize: 35,),
                 mysizedbox(height: 5,),
                 mytext(data: 'Welcome to our cozy coffee corner, where \n every cup is a delightful for you.', textAlign: TextAlign.center, color: AppColors.whitecolor, fontSize: 14,),
                 mysizedbox(height: 5,),
                 Padding(
                   padding: const EdgeInsets.all(8.0),
                   child: InkWell(
                     onTap: (){
                       Navigator.push(context, MaterialPageRoute(builder: (context) => homepage()));
                     },
                     child: Container(
                       height: 50,
                       width: 300,
                       decoration: BoxDecoration(
                         borderRadius: BorderRadius.circular(20),
                         color: AppColors.browncolor,
                       ),

                       child: Center(child: mytext(data: 'Get Started',  color: AppColors.whitecolor),
                       ),
                     ),
                   ),
                 )
               ],
             ),
           )
          ],
        ),
      ),
    );
  }
}
