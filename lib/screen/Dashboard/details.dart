import 'package:flutter/material.dart';
import 'package:firebase_database/firebase_database.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key, required this.title, required this.head});
  final String title;
  final String head;

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  static final databaseReference = FirebaseDatabase.instance.ref();
  List<String> list = [];
  int quslen = 0;
  int score = 0;
  var listvalue = [];
  bool ispressed = false;
  static var rawdata = {};
  @override
  void initState() {
    super.initState();
    databaseReference.child(widget.head).once().then((dataSnapshot) async {
      // var name = dataSnapshot.snapshot.value.toString();

      Map<dynamic, dynamic> values = dataSnapshot.snapshot.value as Map;
      values.forEach((key, values) {
        setState(() {
          list.add(key);
        });
      });
      setState(() {
        rawdata = dataSnapshot.snapshot.value as Map;
        listvalue = List.generate(rawdata['question'].length,
            (index) => List.generate(4, (index) => 0),
            growable: false);
        quslen = rawdata['question'].length;
      });
    });
  }

  changeindex(index, slot) {
    if (index == 0 && slot == 1) {
      return [0, 'A'];
    } else if (slot == 1) {
      return [index * 4, 'A'];
    } else if (slot == 2) {
      return [index * 4 + 1, 'B'];
    } else if (slot == 3) {
      return [index * 4 + 2, 'C'];
    } else if (slot == 4) {
      return [index * 4 + 3, 'D'];
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListView.builder(
              physics: const ScrollPhysics(),
              shrinkWrap: true,
              itemCount: quslen,
              itemBuilder: (BuildContext context, int index) {
                return ListTile(
                    title: Padding(
                  padding: const EdgeInsets.only(
                      top: 25.0, left: 15, right: 15, bottom: 25),
                  child: SizedBox(
                    height: 490,
                    width: 20,
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8.0),
                        color: Colors.blue.shade50,
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3, 3), //(x,y)
                            blurRadius: 6.0,
                          ),
                          BoxShadow(
                            color: Colors.white,
                            offset: Offset(-3, -3), //(x,y)
                            blurRadius: 6.0,
                          ),
                        ],
                      ),
                      child: Column(children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 30, left: 30),
                          child: qustionwidget(
                              rawdata['question'][index], index + 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: option(
                              rawdata['answer'][changeindex(index, 1)[0]],
                              changeindex(index, 1)[1],
                              changeindex(index, 1)[0],
                              index),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: option(
                              rawdata['answer'][changeindex(index, 2)[0]],
                              changeindex(index, 2)[1],
                              changeindex(index, 2)[0],
                              index),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: option(
                              rawdata['answer'][changeindex(index, 3)[0]],
                              changeindex(index, 3)[1],
                              changeindex(index, 3)[0],
                              index),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 30),
                          child: option(
                              rawdata['answer'][changeindex(index, 4)[0]],
                              changeindex(index, 4)[1],
                              changeindex(index, 4)[0],
                              index),
                        )
                      ]),
                    ),
                  ),
                ));
              }),
          Padding(
            padding: const EdgeInsets.only(
                right: 88.0, left: 88.0, top: 28.0, bottom: 20.0),
            child: ElevatedButton(
                onPressed: () =>
                    setState(() => {ispressed = true, print(score)}),
                onLongPress: () {
                  print("long press");
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20.0),
                  ),
                  backgroundColor: Colors.blue,
                  padding: const EdgeInsets.symmetric(
                      horizontal: 10 * 1.5, vertical: 10),
                ),
                child: Text(ispressed ? '$score/50' : 'ANALYSE',
                    style: const TextStyle(
                        color: Colors.black87,
                        fontWeight: FontWeight.w600,
                        fontSize: 24.0))),
          ),
        ],
      ),
    );
  }

  option(ans, qusoption, index, i) {
    return listvalue[i][index % 4] == 0
        ? InkWell(
            onTap: () => {
              setState(() {
                index / 4 - i == 0.0
                    ? score = score + 2
                    : index / 4 - i == 0.25
                        ? score = score + 4
                        : index / 4 - i == 0.75
                            ? score = score + 6
                            : score = score + 8;

                listvalue[i] = [1, 1, 1, 1];
                listvalue[i][index % 4] = 2;
                print(listvalue);
                print(score);
              }),
            },
            child: SizedBox(
                height: 60,
                width: 300,
                child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      color: listvalue[i][index % 4] == 2
                          ? Colors.black
                          : Colors.blue,
                      boxShadow: const [
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-3, 3), //(x,y)
                          blurRadius: 6.0,
                        ),
                        BoxShadow(
                          color: Colors.white,
                          offset: Offset(-3, -3), //(x,y)
                          blurRadius: 6.0,
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: Container(
                              height: 55,
                              width: 35,
                              decoration: BoxDecoration(
                                color: Colors.blue.shade100,
                                shape: BoxShape.circle,
                              ),
                              child: Center(
                                  child: Text(qusoption,
                                      style: const TextStyle(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20)))),
                        ),
                        Flexible(
                          child: Padding(
                            padding:
                                const EdgeInsets.only(left: 16.0, top: 0.5),
                            child: Text(ans,
                                // textAlign: TextAlign.left,
                                // overflow: TextOverflow.fade,
                                // maxLines: 2,
                                // softWrap: true,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20)),
                          ),
                        ),
                      ],
                    ))),
          )
        : SizedBox(
            height: 60,
            width: 300,
            child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  color:
                      listvalue[i][index % 4] == 2 ? Colors.black : Colors.blue,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, 3), //(x,y)
                      blurRadius: 6.0,
                    ),
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(-3, -3), //(x,y)
                      blurRadius: 6.0,
                    ),
                  ],
                ),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Container(
                          height: 55,
                          width: 35,
                          decoration: BoxDecoration(
                            color: Colors.blue.shade100,
                            shape: BoxShape.circle,
                          ),
                          child: Center(
                              child: Text(qusoption,
                                  style: const TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20)))),
                    ),
                    Flexible(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0, top: 0.5),
                        child: Text(ans,
                            // textAlign: TextAlign.left,
                            // overflow: TextOverflow.fade,
                            // maxLines: 2,
                            // softWrap: true,
                            style: const TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20)),
                      ),
                    ),
                  ],
                )));
  }

  Text qustionwidget(qus, index) {
    return Text(
      '$index . $qus',
      style: const TextStyle(
        color: Colors.black,
        fontWeight: FontWeight.w800,
        fontFamily: 'Roboto',
        letterSpacing: 0.5,
        fontSize: 20,
      ),
    );
  }
}
