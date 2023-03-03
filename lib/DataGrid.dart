import 'package:flutter/material.dart';

void main() {
  runApp(const DataGrid());
}

class DataGrid extends StatefulWidget {
  const DataGrid({super.key});
  @override
  _DataGridState createState() => _DataGridState();
}

class _DataGridState extends State<DataGrid> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: NotificationListener(
        child: Scaffold(
            body: Container(
          height: double.infinity,
          width: double.infinity,
          color: Colors.amber,
          child: Row(
            children: <Widget>[
              SizedBox(
                width: 300,
                height: 1900,
                child: Column(
                  children: const [
                    Text("data"),
                  ],
                ),
              ),
              //其余列
              const Expanded(
                child: Text("sd"),
              ),
            ],
          ),
        )),
      ),
    );
  }
}
