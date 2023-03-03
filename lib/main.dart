import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DataGrid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DataGrid(title: 'DataGrid'),
    );
  }
}

class DataGrid extends StatefulWidget {
  const DataGrid({super.key, required this.title});
  final String title;

  @override
  State<DataGrid> createState() => _DataGridState();
}

class _DataGridState extends State<DataGrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(widget.title),
        ),
        body: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Row(
              children: [
                Container(
                  width: 100,
                  height: double.infinity,
                  child: Column(
                    children: [
                      Container(
                        width: double.infinity,
                        height: 40,
                        color: Colors.amber,
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.orange,
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: IntrinsicWidth(
                            child: Container(
                              width: 500,
                              child: Table(
                                children: [
                                  TableRow(
                                    children: [
                                      IntrinsicHeight(
                                        child: Container(
                                          width: 200,
                                          height: 20,
                                          color: Colors.deepPurple,
                                        ),
                                      ),
                                      IntrinsicHeight(
                                        child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Colors.lightBlueAccent),
                                      ),
                                      IntrinsicHeight(
                                        child: Container(
                                            width: 20,
                                            height: 20,
                                            color: Colors.deepPurple),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            color: Colors.pink,
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            )));
  }
}
