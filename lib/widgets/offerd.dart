import 'package:flutter/material.dart';
import 'package:testt/odscreen.dart';

class offerd extends StatefulWidget {
  late final String title;
  late final String colorCode;
  late final String imageUrl;

  offerd({required this.title, required this.colorCode, required this.imageUrl});
  @override
  State<offerd> createState() => _offerdState();
}
class _offerdState extends State<offerd> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => odscreen(
              title: widget.title,
              imageUrl: widget.imageUrl,
            )),
          );
        },
        child: Container(
          width: double.infinity,
          height: 85,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blue,
              width: 3.0,
            ),
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 78,
                  width: 58,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5.0),
                    child: Image.network(
                      widget.imageUrl,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 12.0,bottom: 12.0),
                child: Container(
                  width: 200,
                  height: 78,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text( widget.title,style: TextStyle(color: Colors.black,fontSize: 15, fontWeight: FontWeight.bold)),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0,left: 5.0),
                        child: Container(
                          width: 72,
                          height: 25,
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Color(int.parse(widget.colorCode.replaceAll('#', ''), radix: 16)),
                              width: 2.0,
                            ),
                            borderRadius: BorderRadius.circular(3.0),
                          ),
                          child: Center(child: Text('Get ₹234',style: TextStyle(color: Colors.blue,fontSize: 11))),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 14.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Row(
                        children: [
                          Icon(Icons.local_fire_department_sharp,color: Colors.orange,size: 14.0,),
                          Text('4567',style: TextStyle(color: Colors.orange,fontSize: 12))
                        ],
                      ),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}