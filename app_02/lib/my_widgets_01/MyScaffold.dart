import 'package:flutter/material.dart';

class Myscaffold extends StatelessWidget {
  const Myscaffold({super.key});

  @override
  Widget build(BuildContext context) {
    // Trả về Scaffold- Đây là widget cung cấp bố cục Meterial design đơn giản
    // Màn hình.
    return Scaffold(
      appBar: AppBar(
        title: Text("App_02 Haha")
      ),
      backgroundColor: Colors.white70,
      body: Center(child: Text("Noi dung chinh")),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("object");
        },
        child: const Icon(Icons.add_ic_call),
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:  [
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Cá nhân"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Tìm Kiếm"),
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Trang chủ"),
        ],
      ),
    );


  }
}
