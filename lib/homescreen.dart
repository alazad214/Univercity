import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Snack(messege, context) {
    ScaffoldMessenger.of(context)
        .showSnackBar(SnackBar(content: Text(messege)));
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          children: [
            _Card("ভর্তি যোগ্যতা", Colors.deepOrange, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.pinkAccent, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.black26, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.teal, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.blueAccent, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.amberAccent, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.cyanAccent, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.lightBlueAccent, () {}),
            _Card("ভর্তি যোগ্যতা", Colors.red, () {}),
          ],
        ));
  }
}

//Custom Widget------------------------------------------>>>>>>>>>>>>>>>>>>>>>>>
Widget _Card(
  text,
  color,
  ontap,
) {
  return GestureDetector(
    onTap: ontap,
    child: SizedBox(
      width: double.infinity,
      height: 85,
      child: Card(
        clipBehavior: Clip.antiAlias,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        elevation: 8,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              color: color,
              height: double.infinity,
              child: Lottie.asset(
                "asset/animation/animat1.json",
              ),
              width: 70,
            ),
            Expanded(
                child: Padding(
              padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
              child: Text(
                text,
                style: TextStyle(fontSize: 18),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )),
            IconButton(onPressed: () {}, icon: Icon(Icons.arrow_drop_down))
          ],
        ),
      ),
    ),
  );
}
