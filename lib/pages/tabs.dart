import 'package:flutter/material.dart';
import './tabs/home.dart';
import './tabs/category.dart';
import './tabs/message.dart';
import './tabs/setting.dart';
import './tabs/user.dart';

class Tabs extends StatefulWidget {
  final int index;
  const Tabs({super.key, this.index = 0});

  @override
  State<Tabs> createState() => _TabsState();
}

class _TabsState extends State<Tabs> {
  late int _currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _currentIndex = widget.index;
  }

  final List<Widget> _pages = const [
    HomePage(),
    CategoryPage(),
    MessagePage(),
    SettingPage(),
    UserPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter App"),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            Row(
              children: [
                //自定义
                Expanded(
                    flex: 1,
                    child: DrawerHeader(
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover, image: NetworkImage("url")),
                      ),
                      child: Column(
                        children: const [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage("url"),
                            ),
                            title: Text("data"),
                          )
                        ],
                      ),
                    ))
                // Expanded(
                //   flex: 1,
                //   child: UserAccountsDrawerHeader(
                //     accountName: const Text("accountName"),
                //     accountEmail: const Text("accountEmail"),
                //     otherAccountsPictures: [
                //       Image.network("src"),
                //     ],
                //     currentAccountPicture: const CircleAvatar(
                //       backgroundImage: NetworkImage("url"),
                //     ),
                //     decoration: const BoxDecoration(
                //         image: DecorationImage(
                //             fit: BoxFit.cover, image: NetworkImage("url"))),
                //   ),
                // )
              ],
            ),
            const ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.people),
                ),
                title: Text("data")),
            const Divider()
          ],
        ),
      ),
      endDrawer: const Drawer(
        child: Text("data"),
      ),
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,
        iconSize: 30,
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        onTap: (value) {
          setState(() {
            _currentIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "首页"),
          BottomNavigationBarItem(icon: Icon(Icons.category), label: "分类"),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: "消息"),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: "设置"),
          BottomNavigationBarItem(icon: Icon(Icons.people), label: "个人"),
        ],
      ),
      floatingActionButton: Container(
        width: 60,
        height: 60,
        padding: const EdgeInsets.all(2),
        margin: const EdgeInsets.only(top: 6),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(30)),
        child: FloatingActionButton(
          backgroundColor: _currentIndex == 2 ? Colors.red : Colors.blue,
          onPressed: () {
            setState(() {
              _currentIndex = 2;
            });
          },
          child: const Icon(Icons.add),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
    );
  }
}
