import 'package:flutter/material.dart';

import 'homescreen.dart';
class odscreen extends StatefulWidget {
  late final String title;
  late final String imageUrl;

  odscreen({required this.title, required this.imageUrl});
  @override
  State<odscreen> createState() => _odscreenState();
}
class _odscreenState extends State<odscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        leading: Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: IconButton(
                onPressed: (){
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => homescreen()),);
                },
                icon: Icon(Icons.arrow_back,size:34,color: Colors.white,)),
          ),
        ),
        title: Align(
          alignment: Alignment.topLeft,
          child: Text('Offer details',
              style: TextStyle(color: Colors.white,fontSize: 23)),
        ),
      ),
      body: Column(
        children: [
          Container(
            height: 160,
            width: double.infinity,
            child: Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0,top: 22.0,bottom: 20.0,right: 10),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(10.0),
                    child: Image.network(
                      widget.imageUrl,
                      height: 117 ,
                      width: 117,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Text(widget.title,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold)),
                    ),
                    Container(
                      width:250,
                        child: Text('This is to give the crisp description of the app.',style: TextStyle(color: Colors.black45,fontSize: 14))),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 28.0),
                      child: Row(
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          Icon(Icons.star,color: Colors.amber,),
                          Icon(Icons.star,color: Colors.amber,),
                          Icon(Icons.star,color: Colors.amber,),
                          Icon(Icons.star,color: Colors.black12,)
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Text('________________________________________________________',style: TextStyle(color: Colors.black26,fontSize: 14)),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,top: 10.0),
            child: Align(
              alignment: Alignment.topLeft,
                child: Text('Step(1/4)',style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.bold))
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.green,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                    child: Icon(Icons.check_circle,color: Colors.green,size: 35,)
                  ),
                  Text('Install the application',style:
                  TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold, decoration: TextDecoration.lineThrough,)),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Container(
                      width: 45,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.green,
                      ),
                      child:Center(child: Text('₹20',style: TextStyle(color: Colors.white,fontSize: 13))) ,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: Container(
              width: double.infinity,
              height: 125,
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.orange,
                  width: 3.0,
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Icon(Icons.check_circle,color: Colors.orange,size: 35,),
                        Text('  Complete 3 offers',style: TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                        Spacer(),
                        Padding(
                          padding: const EdgeInsets.only(right: 14.0),
                          child: Container(
                            width: 45,
                            height: 28,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              color: Colors.orange,
                            ),
                            child:Center(child: Text('₹20',style: TextStyle(color: Colors.white,fontSize: 13))) ,
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    width:350,
                    child: Text('After installing the app and after registration ,'
                        ' you are eligible for the 3 offers ,'
                        ' which are exclusive for you and helpful for you.'
                        ,style: TextStyle(color: Colors.black26,fontSize: 14)),
                  ),
                ],
              )
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.black12,
                borderRadius: BorderRadius.circular(25.0),
              ),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Icon(Icons.circle,color: Colors.black26,size: 35,)
                  ),
                  Text('Refer workstation to friend',style:
                  TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Container(
                      width: 45,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child:Center(child: Text('₹20',style: TextStyle(color: Colors.blue,fontSize: 13))) ,
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20.0,right: 20,top: 10),
            child: Container(
              width: double.infinity,
              height: 50,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(25.0),
                color: Colors.black12
              ),
              child: Row(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(left: 8.0,right: 8.0),
                      child: Icon(Icons.circle,color: Colors.black26,size: 35,)
                  ),
                  Text('Withdraw first amount',style:
                  TextStyle(color: Colors.black,fontSize: 15,fontWeight: FontWeight.bold)),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.only(right: 14.0),
                    child: Container(
                      width: 45,
                      height: 28,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.0),
                        color: Colors.white,
                      ),
                      child:Center(child: Text('₹20',style: TextStyle(color: Colors.blue,fontSize: 13))) ,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.local_fire_department_sharp,color: Colors.orange),
              Text('23456 users has already participated',style: TextStyle(color: Colors.orange,fontSize: 16))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0,bottom: 40.0,left: 20.0,right: 20.0),
            child: Container(
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.blue.shade800,Colors.blue.shade400],
                ),
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Center(
                child: Text('Get ₹364',style:
                TextStyle(color: Colors.white,fontSize: 24,fontWeight: FontWeight.bold)),
              ),
            ),
          )
        ],
      ),
    );
  }
}