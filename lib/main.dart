// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:tempapp/array.dart';
import 'package:tempapp/conistant.dart';
import 'package:tempapp/drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mainColor,
      body: Center(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: drawer(),
              flex: 2,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.all(defultpadding),
                color: mainColor,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  // ignore: prefer_const_literals_to_create_immutables
                  children: [
                    Expanded(
                      child: ProfileCard(),
                    ),
                    Expanded(
                      flex: 6,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Expanded(
                            flex: 5,
                            child: Container(
                              height: double.infinity,
                              decoration: BoxDecoration(
                                  color: mainColor,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(10))),
                              child: Column(
                                children: [
                                  Expanded(
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        for (var i = 0;
                                            i < midStorgelist.length;
                                            i++)
                                          MidSroge(i: i),
                                      ],
                                    ),
                                    flex: 2,
                                  ),
                                  SizedBox(
                                    height: defultpadding,
                                  ),
                                  Expanded(
                                    child: Container(
                                      decoration: BoxDecoration(
                                          color: secColor,
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10))),
                                      child: Padding(
                                        padding: EdgeInsets.all(defultpadding),
                                        child: SizedBox(
                                          width: double.infinity,
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text('Rexcent Files',
                                                  style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 18)),
                                              SizedBox(
                                                height: defultpadding,
                                              ),
                                              Expanded(
                                                child: Theme(
                                                  data: Theme.of(context)
                                                      .copyWith(
                                                          dividerColor: Colors
                                                              .grey
                                                              .withOpacity(.5)),
                                                  child: SizedBox(
                                                    width: double.infinity,
                                                    child: DataTable(
                                                      columns: const [
                                                        DataColumn(
                                                            label: Text(
                                                                'File Name',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14))),
                                                        DataColumn(
                                                            label: Text('Data',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14))),
                                                        DataColumn(
                                                            label: Text('Size',
                                                                style: TextStyle(
                                                                    color: Colors
                                                                        .white,
                                                                    fontSize:
                                                                        14))),
                                                      ],
                                                      rows: const [
                                                        DataRow(cells: [
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                        ]),
                                                        DataRow(cells: [
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                        ]),
                                                        DataRow(cells: [
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                        ]),
                                                        DataRow(cells: [
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                          DataCell(Text(
                                                              'DataCell',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize:
                                                                      11))),
                                                        ]),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                    flex: 4,
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: defultpadding,
                          ),
                          Expanded(
                            flex: 2,
                            child: Storge(),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              flex: 9,
            ),
          ],
        ),
      ),
    );
  }
}
