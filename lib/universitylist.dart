import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class UniversityList extends StatefulWidget {
  const UniversityList({super.key});

  @override
  State<UniversityList> createState() => _UniversityListState();
}

class _UniversityListState extends State<UniversityList> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        Padding(
          padding: EdgeInsets.all(10),
          child: Card(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            elevation: 8,
            child: ExpansionTile(
              tilePadding: EdgeInsets.all(8),
              childrenPadding: EdgeInsets.all(5),
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(5)),
              title: Text("স্বায়ত্তশাসিত বিশ্ববিদ্যালয়"),
              children: [
                Container(
                  height: 150,
                  color: Colors.lightBlue,
                  child: ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Container(color: Colors.red,height: 50,),
                      Container(color: Colors.cyanAccent,height: 50,),
                      Container(color: Colors.blue,height: 50,),
                    ],
                  ),

                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
