import 'package:flutter/material.dart';
import 'package:task/view/constants/assets.dart';
import 'package:task/view/constants/colors.dart';
import 'package:task/view/widgets/custom-button.dart';

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List boxes = [
    {'title': 'Noor City', 'image': AppAssets.p1},
    {'title': 'Mountain View', 'image': AppAssets.p2},
    {'title': 'Noor City', 'image': AppAssets.p1},
    {'title': 'Mountain View', 'image': AppAssets.p2},
  ];
  int currentIndex = 2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColors.whiteColor,
        drawer: NavigationDrawer(
          children: [
            SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildHeader(context),
                  buildMenuItems(context)
                ],
              ),
            )
          ],
        ),
        appBar: AppBar(
          leading: Builder(
            builder: (BuildContext context) {
              return IconButton(
                icon: Icon(
                  Icons.menu,
                  color: AppColors.blackColor,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              );
            },
          ),
          title: Column(
            children: [
              Text(
                'Home ',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.blackColor),
              ),
              Text(
                'Offers & Deals',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                    color: AppColors.blackColor),
              )
            ],
          ),
          centerTitle: true,
          backgroundColor: AppColors.whiteColor,
        ),
        bottomNavigationBar: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(15), topLeft: Radius.circular(15)),
            boxShadow: [
              BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
            ],
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(8.0),
              topRight: Radius.circular(8.0),
            ),
            child: BottomNavigationBar(
              iconSize: 33,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.black.withOpacity(0.8),
              selectedItemColor: AppColors.yellowColor,
              unselectedItemColor: Colors.white,
              currentIndex: currentIndex,
              onTap: (newIndex) {
                setState(() {
                  currentIndex = newIndex;
                });
              },
              items: [
                BottomNavigationBarItem(
                  label: 'Units',
                  icon: Icon(Icons.business_sharp),
                ),
                BottomNavigationBarItem(
                  label: 'Contacts',
                  icon: Icon(Icons.contacts_outlined),
                ),
                BottomNavigationBarItem(
                  label: 'Home',
                  icon: Icon(Icons.home),
                ),
                BottomNavigationBarItem(
                  label: 'Invoices',
                  icon: Icon(Icons.newspaper_rounded),
                ),
                BottomNavigationBarItem(
                  label: 'Services',
                  icon: Icon(Icons.handyman_sharp),
                ),
              ],
            ),
          ),
        ),
        body: Container(
          padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16),
          child: ListView.builder(
            itemCount: boxes.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(30), // Image border
                      child: SizedBox.fromSize(
                        size: Size.fromHeight(170), // Image radius
                        child: Image.asset(boxes[index]['image'],
                            fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 26.0, right: 12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            boxes[index]['title'],
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                color: AppColors.blackColor),
                          ),
                          CustomButton(
                            text: 'Details',
                            onPressed: () {},
                            w: 120,
                            h: 27,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

Widget buildHeader(BuildContext context) => Container(
      padding: EdgeInsets.only(top: 15, bottom: 15),
      child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              border: Border.all(width: 5, color: AppColors.whiteColor),
              borderRadius: BorderRadius.circular(100),
            ),
            child: CircleAvatar(
              radius: 35,
              backgroundColor: AppColors.whiteColor,
              backgroundImage: AssetImage(AppAssets.pp),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          Text(
            'Mustafa Mahmoud',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          Text(
            'ID : 2043',
            style: TextStyle(fontSize: 16),
          ),
        ],
      ),
    );
Widget buildMenuItems(BuildContext context) => Column(
      children: [
        ListTile(
          leading: Icon(
            Icons.announcement,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Announcement',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.contacts_outlined,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Contacts',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.business_sharp,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Units',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.handyman_sharp,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Services',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.newspaper_rounded,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Invoices',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.qr_code_scanner_rounded,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Visitors QR',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.airplane_ticket,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Tickets',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.support_agent,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Contact us',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        ListTile(
          leading: Icon(
            Icons.settings,
            color: AppColors.yellowColor,
            size: 35,
          ),
          title: Text(
            'Support',
            style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19),
          ),
          onTap: () {},
        ),
        SizedBox(
          height: 22,
        ),
        Divider(
          thickness: 2,
          color: AppColors.whiteColor,
        ),
        TextButton(
            onPressed: () {},
            child: Text(
              'Change Password',
              style: TextStyle(color: AppColors.yellowColor, fontSize: 19),
            ))
      ],
    );
