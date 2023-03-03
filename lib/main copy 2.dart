import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("title"),
        ),
        body: Container(
          width: double.infinity,
          color: Colors.amber,
          padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            verticalDirection: VerticalDirection.down,
            children: <Widget>[
              const SizedBox(
                width: 200,
                height: 40,
                child: Text.rich(TextSpan(children: [
                  TextSpan(text: "参考链接："),
                  TextSpan(
                      text: "https://baidu.com",
                      style: TextStyle(color: Colors.lightBlue))
                ])),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                    color: Colors.blue,
                    width: 10,
                    height: 12,
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      color: Colors.blue,
                      width: 10,
                      height: 12,
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                      color: Colors.blue,
                      width: 10,
                      height: 12,
                    ),
                  ),
                ],
              ),
              Stack(
                fit: StackFit.loose,
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                    width: 30,
                    height: 30,
                    color: Colors.blue,
                  ),
                  Positioned(
                    top: 5,
                    left: 5,
                    child: Container(
                      width: 20,
                      height: 20,
                      color: Colors.red,
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(30),
                  child: Container(
                    width: 30,
                    height: 30,
                    color: Colors.yellow,
                    child: const Align(
                      alignment: Alignment.center,
                      child: Opacity(
                        opacity: 0.3,
                        child: Text("data"),
                      ),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                child: PhysicalModel(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  shadowColor: Colors.green,
                  elevation: 10,
                  clipBehavior: Clip.antiAlias,
                  child: Image.network(
                    "https://www.baidu.com/img/flexible/logo/pc/result.png",
                    width: 101,
                    height: 100,
                  ),
                ),
              ),
              Wrap(
                direction: Axis.horizontal,
                alignment: WrapAlignment.start,
                spacing: 10,
                runSpacing: 10,
                crossAxisAlignment: WrapCrossAlignment.end,
                children: [
                  Container(
                    color: Colors.purple,
                    width: 60,
                    height: 20,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 60,
                    height: 20,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 60,
                    height: 20,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 60,
                    height: 20,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 60,
                    height: 20,
                  ),
                  Container(
                    color: Colors.purple,
                    width: 60,
                    height: 20,
                  ),
                ],
              )
            ],
          ),
        ));
  }
}
