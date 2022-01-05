// ignore_for_file: prefer_const_constructors, camel_case_types, avoid_print

import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:tempapp/array.dart';
import 'package:tempapp/conistant.dart';

Drawer drawer() {
  return Drawer(
      child: Container(
    color: secColor,
    padding: EdgeInsets.all(defultpadding),
    child: ListView(
      children: [
        DrawerHeader(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                backgroundColor: secColor,
                radius: 40,
              ),
              Padding(padding: EdgeInsets.only(left: defultpadding / 2)),
              const Text(
                'Shop',
                style: TextStyle(color: Colors.white, fontSize: 18),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        SizedBox(
          height: defultpadding,
        ),
        for (var i = 0; i < drawerlist.length; i++) minidrawer(i),
      ],
    ),
  ));
}

InkWell minidrawer(int i) {
  return InkWell(
    onTap: () {
      // ignore: avoid_print
      print(drawerlist[i]['name']);
    },
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Icon(
          drawerlist[i]['icon'],
          color: Colors.white54,
        ),
        Padding(
          padding: EdgeInsets.only(
              left: defultpadding / 2,
              right: defultpadding,
              bottom: defultpadding,
              top: defultpadding),
        ),
        Text(
          drawerlist[i]['name'],
          style: const TextStyle(color: Colors.white54),
        ),
      ],
    ),
  );
}

class search extends StatelessWidget {
  const search({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(color: Colors.white),
      decoration: InputDecoration(
          focusColor: Colors.white,
          hintText: 'Search',
          hintStyle: TextStyle(
            color: Colors.white,
          ),
          fillColor: secColor,
          filled: true,
          border: const OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          suffixIcon: InkWell(
            onTap: () {
              // ignore: avoid_print
              print('search');
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.blue[700],
                    borderRadius: BorderRadius.all(Radius.circular(10))),
                padding: EdgeInsets.all(defultpadding * .5),
                child: const Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
          )),
    );
  }
}

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Dashbord",
          style: TextStyle(
              color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        Spacer(
          flex: 2,
        ),
        Expanded(
          child: search(),
        ),
        Container(
          margin: EdgeInsets.only(left: defultpadding),
          padding: EdgeInsets.symmetric(
              horizontal: defultpadding, vertical: defultpadding / 2.5),
          decoration: BoxDecoration(
              color: secColor,
              borderRadius: BorderRadius.all(Radius.circular(10))),
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: const NetworkImage(
                    "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885__480.jpg"),
                backgroundColor: secColor,
                radius: 22,
              ),
              SizedBox(
                width: defultpadding / 2,
              ),
              Text(
                'Mohammed B',
                style: TextStyle(color: Colors.white),
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(
                width: defultpadding / 2,
              ),
              InkWell(
                onTap: () {
                  // ignore: avoid_print
                  print('keyboard_arrow_down');
                },
                child: Icon(Icons.keyboard_arrow_down, color: Colors.white),
              )
            ],
          ),
        )
      ],
    );
  }
}

class Storge extends StatelessWidget {
  const Storge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: secColor, borderRadius: BorderRadius.all(Radius.circular(10))),
      child: Column(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          SizedBox(
            height: defultpadding,
          ),
          Text(
            "Storge Details",
            style: TextStyle(
                color: Colors.white, fontSize: 18, fontWeight: FontWeight.w600),
            textAlign: TextAlign.left,
          ),
          SizedBox(
            height: defultpadding,
          ),
          SizedBox(
            height: 200,
            child: Stack(
              children: [
                PieChart(PieChartData(centerSpaceRadius: 70, sections: [
                  for (var i = 0; i < pieChartData.length; i++)
                    PieChartSectionData(
                        color: pieChartData[i]['color'],
                        value: pieChartData[i]['value'],
                        showTitle: false,
                        radius: pieChartData[i]['radius']),
                ])),
                Positioned.fill(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Text('29.1',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600)),
                    Text('of128GB',
                        style: TextStyle(
                            color: Colors.white54,
                            fontSize: 15,
                            fontWeight: FontWeight.w600))
                  ],
                ))
              ],
            ),
          ),
          for (var i = 0; i < storgelist.length; i++) miniStorge(i: i)
        ],
      ),
    );
  }
}

class miniStorge extends StatelessWidget {
  const miniStorge({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(defultpadding / 2),
      child: Container(
        padding: EdgeInsets.all(defultpadding / 2),
        width: double.infinity,
        decoration: BoxDecoration(
            border: Border.all(width: 2, color: mainColor),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: InkWell(
          onTap: () {
            print(storgelist[i]['title']);
          },
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(
                storgelist[i]['icon'],
                color: storgelist[i]['color'],
              ),
              SizedBox(
                width: defultpadding / 2,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      storgelist[i]['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    Text(
                      storgelist[i]['file'],
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 11,
                      ),
                    ),
                  ],
                ),
              ),
              Spacer(),
              Text(
                storgelist[i]['storge'],
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 13,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MidSroge extends StatelessWidget {
  const MidSroge({
    Key? key,
    required this.i,
  }) : super(key: key);

  final int i;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: secColor,
                  borderRadius:
                      BorderRadiusDirectional.all(Radius.circular(10))),
              child: Padding(
                padding: EdgeInsets.all(defultpadding),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: midStorgelist[i]['color'].withOpacity(.1),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10))),
                          child: Icon(
                            midStorgelist[i]['icon'],
                            color: midStorgelist[i]['color'],
                          ),
                        ),
                        Spacer(),
                        InkWell(
                          onTap: () {
                            print(midStorgelist[i]['title']);
                          },
                          child: Icon(
                            Icons.more_vert,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: defultpadding,
                    ),
                    Text(
                      midStorgelist[i]['title'],
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                      ),
                    ),
                    SizedBox(
                      height: defultpadding,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 3,
                          decoration: BoxDecoration(
                              color: midStorgelist[i]['color'].withOpacity(.1)),
                        ),
                        LayoutBuilder(
                          builder: (context, constant) => Container(
                            width: constant.maxWidth * midStorgelist[i]['per'],
                            height: 3,
                            decoration:
                                BoxDecoration(color: midStorgelist[i]['color']),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: defultpadding,
                    ),
                    Row(
                      children: [
                        Text(
                          midStorgelist[i]['file'],
                          style: TextStyle(
                            color: Colors.white54,
                            fontSize: 11,
                          ),
                        ),
                        Spacer(),
                        Text(
                          midStorgelist[i]['storge'],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 11,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          i != midStorgelist.length - 1
              ? SizedBox(
                  width: defultpadding,
                )
              : SizedBox.shrink(),
        ],
      ),
    );
  }
}
