import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final imageUrl = 'https://avatars.githubusercontent.com/u/62945306?v=4';
    return Drawer(
      backgroundColor: Colors.blue,
      child: ListView(
        children: [
          DrawerHeader(
            padding: const EdgeInsets.all(0),
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              accountName: Text(
                'Mobasshir Imam',
                style: GoogleFonts.lato(),
              ),
              accountEmail: Text(
                'imobasshirimam@gmail.com',
                style: GoogleFonts.lato(),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              Icons.home,
              color: Colors.white,
            ),
            title: Text(
              'Home',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(
              CupertinoIcons.profile_circled,
              color: Colors.white,
            ),
            title: Text(
              'Profile',
              style: GoogleFonts.lato(
                textStyle: const TextStyle(
                  color: Colors.white,
                ),
              ),
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    );
  }
}
