import 'package:flutter/material.dart';
import 'package:testt/widgets/offerd.dart';
import 'package:testt/widgets/toffers.dart';

class offersData {
  final String title;
  final String colorCode;
  final String imageUrl;

  offersData({required this.title, required this.colorCode, required this.imageUrl});
}
class homescreen extends StatefulWidget {
  const homescreen({super.key});
  @override
  State<homescreen> createState() => _homescreenState();
}
class _homescreenState extends State<homescreen>{
  final List<offersData> data = [
    offersData(title: 'KukuFM', colorCode: '#fe5636', imageUrl: 'https://is5-ssl.mzstatic.com/image/thumb/Purple112/v4/fc/3a/7a/fc3a7a7c-f639-1a58-b366-39adebfd2d35/AppIcon-0-0-1x_U007emarketing-0-0-0-10-0-0-sRGB-0-0-0-GLES2_U002c0-512MB-85-220-0-0.png/1200x600wa.png'),
    offersData(title: 'Kotak 811', colorCode: '#f20044', imageUrl: 'https://store-images.s-microsoft.com/image/apps.30333.9007199266679433.2c874489-4dde-4eee-90e3-281f6a05252f.3e9b4517-0e8a-4248-9dd6-9e8b26859584?mode=scale&q=90&h=300&w=300'),
    offersData(title: 'Rage Coffee', colorCode: '#573c05', imageUrl: 'https://cdn.shopify.com/s/files/1/0062/9587/9780/files/Rage_Coffee_New_Logo_x200_2x-edited_x200@2x.png?v=1652100850'),
  ];
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar:AppBar(
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Colors.blue.shade800,Colors.blue.shade400],
              ),
            ),
          ),
          leading:
          IconButton(
              onPressed: (){},
              icon: Icon(Icons.menu_sharp,size:30)),
          title: Align(
            alignment: Alignment.centerLeft,
            child: Text('Hey User',
                style: TextStyle(color: Colors.white,fontSize: 23)),
          ),

          actions: [
            Container(
              margin: EdgeInsets.only(right: 28.0),
              padding: EdgeInsets.all(8.0),
              width: 100,
              height: 40,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Row(
                children: [
                  Icon(Icons.extension_rounded,color: Colors.blue),
                  SizedBox(width: 6),
                  Icon(Icons.currency_rupee,color:Colors.black,size: 17),
                  Text('452',
                  style: TextStyle(color: Colors.black,fontSize: 17),)
                ],
              ),
            ),
          ],
        ),
        backgroundColor: Colors.lightBlue.shade100,
        body: Column(
          children: [
            Container(
          width: double.infinity, // Full width
          height: 100.0,
          decoration: BoxDecoration(
            color: Colors.white,
            ),
              child: TabBar(
                tabs: [
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.local_offer,color: Colors.blue),
                        Text('All Offers',style: TextStyle(color: Colors.black,fontSize: 15))
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.card_giftcard,color: Colors.red),
                        Text('Gifts',style: TextStyle(color: Colors.black,fontSize: 15))
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.punch_clock_outlined,color: Colors.orange),
                        Text('Upcoming',style: TextStyle(color: Colors.black,fontSize: 15))
                      ],
                    ),
                  ),
                  Tab(
                    child: Column(
                      children: [
                        Icon(Icons.check_circle_outline,color: Colors.deepPurple),
                        Text('My Offers',style: TextStyle(color: Colors.black,fontSize: 15))
                      ],
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: ListView(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                        child: Icon(Icons.local_fire_department_sharp,color: Colors.orange),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text('Trending Offers',style: TextStyle(color: Colors.black,fontSize: 19)),
                      )
                    ],
                  ),
                  Container(
                    width: double.infinity, // Full width
                    height: 230.0,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 15.0),
                      child: ListView.builder(
                          scrollDirection: Axis.horizontal,
                          itemCount: data.length,
                          itemBuilder: (context,index) {
                            offersData currentData = data[index];
                            return toffers(
                              title: currentData.title,
                              imageUrl: currentData.imageUrl,
                            );
                          }),
                    ),
                  ),
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0,top: 10.0),
                        child: Icon(Icons.dashboard_customize,color: Colors.blue),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text('More Options',style: TextStyle(color: Colors.black,fontSize: 19)),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0 , right: 15.0),
                    child: ListView.builder(
                      physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context,index) {
                          offersData currentData = data[index];
                          return offerd(
                            title: currentData.title,
                            colorCode: currentData.colorCode,
                            imageUrl: currentData.imageUrl,
                          );
                        }),
                  ),
                ],
              ),
            )
          ],
        )
      ),
    );
  }

}
