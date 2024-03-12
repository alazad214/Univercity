import 'package:flutter/material.dart';

class Question_S extends StatelessWidget {
  Question_S({super.key});

  final _question = [
    {
      "question": "রাজশাহী বিশ্ববিদ্যালয়ের সংক্ষিপ্ত নাম কি",
      "answer": "পাবলিক বিশ্ববিদ্যালয়।"
    },
    {
      "question": "রাজশাহী বিশ্ববিদ্যালয়ের সংক্ষিপ্ত নাম কি",
      "answer": "পাবলিক বিশ্ববিদ্যালয়।"
    },

  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: ListView.builder(
          itemCount: _question.length,
          itemBuilder: (_, index) {
            return Padding(
              padding: EdgeInsets.all(3),
              child: Card(
                elevation: 7,
                child: ExpansionTile(
                  tilePadding: EdgeInsets.all(10),
                  title: Text(
                    _question.elementAt(index)["question"].toString(),
                    style: TextStyle(color: Colors.black, fontSize: 20),
                  ),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)),
                  children: [
                    Card(
                      color: Colors.orange,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(10),
                          child: Text(
                              _question.elementAt(index)["answer"].toString()),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            );
          }),
    );
  }
}
