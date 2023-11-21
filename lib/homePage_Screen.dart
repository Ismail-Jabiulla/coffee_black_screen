import 'package:coffee_black_screen/constants/string.dart';
import 'package:flutter/material.dart';
import 'coffee_ListScreen.dart';
import 'coffee_Title.dart';
import 'constants/colors.dart';
import 'horizontalList.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageScreen extends StatelessWidget {
  const HomePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.colorBlueDark,
        appBar: AppBar(
          title: Text(
            appName,
            style: GoogleFonts.pacifico(
              textStyle: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: AppColors.colorWhiteHighEmp

              ),
            ),
          ),
          backgroundColor: AppColors.colorBlueDark,
          centerTitle: true,
          leading: Icon(
            Icons.menu_outlined,
            color: AppColors.colorWhiteHighEmp,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(
                Icons.notifications,
                color: AppColors.colorWhiteHighEmp,
              ),
            ),
          ],
        ),
        //Bottom Navigation
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: AppColors.colorWhiteHighEmp,
              ),
              label: 'Home',
              backgroundColor: AppColors.colorBlueDark,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.favorite,
                color: AppColors.colorWhiteHighEmp,
              ),
              label: 'Favorite',
              backgroundColor: AppColors.colorBlueDark,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.add_shopping_cart,
                color: AppColors.colorWhiteHighEmp,
              ),
              label: 'Cart',
              backgroundColor: AppColors.colorBlueDark,
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle_outlined,
                color: AppColors.colorWhiteHighEmp,
              ),
              label: 'Profile',
              backgroundColor: AppColors.colorBlueDark,
            )
          ],
        ),
        //Horizontal Axis
        //best Wish
        //Text Field
        body: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  bestApp,
                  style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                      color: AppColors.colorWhiteHighEmp),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                      ),
                      hintText: ('Find Your coffee'),
                      filled: true,
                      fillColor: AppColors.colorWhiteHighEmp,
                      focusedBorder: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: AppColors.colorWhiteHighEmp),
                      )),
                ),
              ),
              //Coffee type row
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    HorizontalList(),
                    HorizontalList(),
                    HorizontalList(),
                  ],
                ),
              ),
              Container(
                height: 400,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 5,
                    itemBuilder: (context, index){
                      return CoffeeTitle();
                    }
                ),
              ),
              Container(
                //height: 300,
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 1,
                    itemBuilder: (context, index){
                      return CoffeListScreen();
                    }
                ),
              ),
            ],
          ),
        )
    );
  }
}
