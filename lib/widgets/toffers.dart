import 'package:flutter/material.dart';

class toffers extends StatefulWidget {
  late final String title;
  late final String imageUrl;

  toffers({required this.title, required this.imageUrl});
  @override
  State<toffers> createState() => _toffersState();
}
class _toffersState extends State<toffers> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0 , top: 8.0),
      child: Container(
        width: 180,
        decoration: BoxDecoration(
          color: Colors.black,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Align(
              alignment: Alignment.topCenter,
              child: ClipRRect(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
                child: Image.network(
                  widget.imageUrl,
                  height: 140.0,
                  width: 180,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0,left: 10.0),
              child: Text(widget.title,style: TextStyle(color: Colors.white,fontSize: 15)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 2.0,left: 10.0),
              child: Text('Get Rs.100',style: TextStyle(color: Colors.white,fontSize: 13)),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0,top: 2.0),
                  child: Icon(Icons.local_fire_department_sharp,color: Colors.orange,size: 13.0,),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4.0),
                  child: Text('4567 users',style: TextStyle(color: Colors.white,fontSize: 11)),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}