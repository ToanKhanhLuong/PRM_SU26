import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Trả về Scaffold- Đây là widget cung cấp bố cục Meterial design đơn giản
    // Màn hình.
    return Scaffold(
      appBar: AppBar(
        title: Text("App_02 Haha"),
        backgroundColor: Colors.blueGrey, // màu nền
        elevation: 4,

        actions: [
          IconButton(
            onPressed: () {
              print("B1");
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              print("B2");
            },
            icon: Icon(Icons.abc),
          ),
          IconButton(
            onPressed: () {
              print("B3");
            },
            icon: Icon(Icons.more_vert),
          ),
        ],
      ),
      // backgroundColor: Colors.white70,
      body: Center(child: Text("Noi dung chinh")),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
        },
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
        ],
      ),
    );
  }
}
