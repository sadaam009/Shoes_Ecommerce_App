import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:shoes/Components/side_navigation.dart';
import 'package:shoes/Ui_reuseable/search_textfield.dart';
import 'package:shoes/Ui_reuseable/textfiel_name.dart';
// Import CustomDrawer file

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Container(
          color: Color(0xFF1A1A2E),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage(
                          'lib/images/user.png'), // Replace with profile image URL
                    ),
                    SizedBox(width: 10),
                    Padding(
                      padding: const EdgeInsets.only(left: 9, top: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Hey,",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
                          ),
                          Text(
                            "Alisson Becker",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Expanded(
                child: ListView(
                  children: [
                    DrawerItem(icon: Iconsax.user, title: 'Profile'),
                    DrawerItem(icon: Iconsax.home, title: 'Home Page'),
                    DrawerItem(icon: Iconsax.shopping_bag, title: 'My Cart'),
                    DrawerItem(icon: Icons.favorite, title: 'Favorite'),
                    DrawerItem(icon: Icons.list_alt, title: 'Orders'),
                    DrawerItem(
                        icon: Iconsax.notification, title: 'Notifications'),
                    SizedBox(height: 20),
                    Divider(color: Colors.grey),
                    DrawerItem(icon: Iconsax.logout, title: 'Sign Out'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),

      // Include CustomDrawer here
      backgroundColor: const Color.fromARGB(255, 243, 246, 249),
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Column(
          children: [
            ListTile(
              horizontalTitleGap: 45.0,
              leading: Container(
                width: 40,
                height: 40,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Builder(
                  builder: (context) {
                    return IconButton(
                      onPressed: () {
                        Scaffold.of(context).openDrawer(); // Open the drawer
                      },
                      icon: Icon(Iconsax.menu),
                    );
                  },
                ),
              ),
              title: Center(child: Text("Store Location")),
              subtitle: Row(
                children: [
                  Image.asset("lib/images/location.png"),
                  SizedBox(
                    width: 6,
                  ),
                  Text(
                    "Mondolibug, Sylhet",
                    style: GoogleFonts.poppins(
                        fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              trailing: Container(
                width: 50,
                height: 50,
                decoration:
                    BoxDecoration(color: Colors.white, shape: BoxShape.circle),
                child: Image.asset('lib/images/shopping.png'),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            SearchTextfield()
          ],
        ),
      ),
    );
  }
}
